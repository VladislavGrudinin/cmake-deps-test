#pragma once

#include <QObject>

namespace core {
class File1 : public QObject {
  Q_OBJECT
public:
  void foo();
};
} // namespace core
