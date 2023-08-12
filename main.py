# This Python file uses the following encoding: utf-8
import os
import sys
from pathlib import Path
from PySide2.QtWidgets import QApplication
#from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


if __name__ == "__main__":
    src_dir = Path(__file__).resolve().parent

    os.environ['QML2_IMPORT_PATH'] = f"{src_dir / 'Lyos_ui/imports'}"
    os.environ['QT_IM_MODULE'] = "qtvirtualkeyboard"
    os.environ["QT_QUICK_CONTROLS_CONF"] = f"{src_dir / 'Lyos_ui/qtquickcontrols2.conf'}"

    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    qml_file = src_dir / "Lyos_ui/content/App.qml"
    engine.load(str(qml_file))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
