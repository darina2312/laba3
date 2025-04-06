#include <iostream>
#include <memory>
#include <vector>
#include <string>
#include <cstdlib>
#include <ctime>
#include <fstream>

// 1) Утечка памяти при ручном управлении (new, delete)
void MemoryLeak(){
  std::cout << "1) Демонстрация утечки памяти (без delete)" << std::endl;
  for(int i = 0; i < 10; i++){
    int* leak = new int[10000];

  }
  std::cout << "При запуске valgrind будет показана утечка" << std::endl;
  std::cout << std::endl;
}

// 2) Исправим утечку с помощью unique_ptr
void UniquePtr(){
  std::cout << "2) Устраним утечку памяти" << std::endl;
  for(int i = 0; i < 10; i++){
    std::unique_ptr<int[]> uniquePtr(new int[500]);
    // Когда uniquePtr выйдет из области видимости,
    // память высвободится автоматически
  }
  std::cout << "Утечки нет" << std::endl;
  std::cout << std::endl;
}

// 3) RAII. Класс, управляющий ресурсом(файлом)
class RAIIFile{
  std::unique_ptr<std::ofstream> file;
  public:
    RAIIFile(const std::string& filename)
      : file(std::make_unique<std::ofstream>(filename))
    {
      if (file->is_open()) {
        std::cout << "Файл открыт. " << std::endl;
        *file << "Запись в файл успешна" << std::endl;
        file->flush();
        std::cout << std::endl;
      } else {
        std::cerr << "Ошибка открытия файла!" << std::endl;
      }
    }
    // Деструктор (автоматически закроет файл)
    ~RAIIFile() {
        std::cout << "Файл закрыт автоматически" << std::endl;
      }
};

// 4) Использование std::shared_ptr
class Resource {
  public:
  Resource(int id) : id_(id) {
    std::cout << "Создан ресурс с ID: " << id_ << std::endl;
  }

  ~Resource() {
    std::cout << "Удалён ресурс с ID: " << id_ << std::endl;
    std::cout << std::endl;
  }

  void use() const {
    std::cout << "Используется ресурс ID: " << id_ << std::endl;
  }

  private:
  int id_;
};

void demoSharedPtr() {
  std::cout << "4) Пример shared_ptr: два владельца";

  std::shared_ptr<Resource> mainOwner = std::make_shared<Resource>(2025);

  std::cout << "Счётчик ссылок: " << mainOwner.use_count() << std::endl;

  {
    std::shared_ptr<Resource> secondaryOwner = mainOwner;
    std::cout << "Счётчик ссылок: " << mainOwner.use_count() << std::endl;

    secondaryOwner->use();
  } // secondaryOwner уничтожен

  std::cout << "После выхода из блока, счётчик: " << mainOwner.use_count() << std::endl;

  mainOwner->use(); // ресурс ещё жив
}

// 5) Использование std::weak_ptr
struct Monitor {
  void track(std::weak_ptr<int> weakRef) {
    if (auto activeRef = weakRef.lock()) {
      std::cout << "Объект всё ещё доступен: " << *activeRef << std::endl;
    } else {
      std::cout << "Объект уже уничтожен." << std::endl;
    }
  }
};

void demoWeakPtr() {
  std::weak_ptr<int> observerLink;

  {
    auto sharedValue = std::make_shared<int>(2025);
    observerLink = sharedValue;

    Monitor m1;
    m1.track(observerLink); // Объект жив
  }

  // sharedValue уничтожен
  Monitor m2;
  m2.track(observerLink); // Объект уже уничтожен
}


int main() {
  MemoryLeak();
  UniquePtr();
  std::string path = "/Users/a1111/Desktop/laba3/testfile/test.txt";
  RAIIFile file(path);
  demoSharedPtr();
  demoWeakPtr();
  std::cout << "Завершение программы" << std::endl;
  return 0;
}