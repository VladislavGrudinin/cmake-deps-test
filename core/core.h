#pragma once

#include <QObject>

namespace core {
class Core : public QObject {
  Q_OBJECT
public:
	~Core();
  void foo();
};
} // namespace core
