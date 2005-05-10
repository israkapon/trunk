# Plik utworzony przez menad?era projekt�w kdevelopa
# ------------------------------------------- 
# Podkatalog wzgl?dem g?�wnego katalogu projektu: ./yade
# Cel to aplikacja 

LIBS += -lyade-lib-threads \
        -lyade-lib-serialization \
        -lyade-lib-factory \
        -lyade-lib-wm3-math \
        -lyade-lib-loki \
        -lyade-lib-multimethods \
        -rdynamic \
        -lboost_date_time \
        -lboost_filesystem \
        -lboost_thread 
INCLUDEPATH += $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../libraries/yade-lib-threads/$(YADEDYNLIBPATH) \
               ../libraries/yade-lib-serialization/$(YADEDYNLIBPATH) \
               ../libraries/yade-lib-factory/$(YADEDYNLIBPATH) \
               ../libraries/yade-lib-wm3-math/$(YADEDYNLIBPATH) \
               ../libraries/yade-lib-loki/$(YADEDYNLIBPATH) \
               ../libraries/yade-lib-multimethods/$(YADEDYNLIBPATH) \
               $(YADEDYNLIBPATH) 
QMAKE_CXXFLAGS_RELEASE += -lpthread \
                          -pthread 
QMAKE_CXXFLAGS_DEBUG += -lpthread \
                        -pthread 
DEFINES = DEBUG 
DESTDIR = $(YADEBINPATH) 
CONFIG += debug \
          warn_on 
TEMPLATE = app 
HEADERS += BodyContainer.hpp \
           Body.hpp \
           BoundingVolume.hpp \
           BroadInteractor.hpp \
           DeusExMachina.hpp \
           Engine.hpp \
           FileGenerator.hpp \
           FrontEnd.hpp \
           GeometricalModel.hpp \
           InteractingGeometry.hpp \
           InteractionContainer.hpp \
           InteractionGeometry.hpp \
           Interaction.hpp \
           InteractionPhysics.hpp \
           InteractionSolver.hpp \
           MetaBody.hpp \
           NullGUI.hpp \
           Omega.hpp \
           PhysicalActionContainer.hpp \
           PhysicalAction.hpp \
           PhysicalParameters.hpp \
           RenderingEngine.hpp \
           SimulationLoop.hpp \
           yadeExceptions.hpp \
           Preferences.hpp 
SOURCES += BodyContainer.cpp \
           Body.cpp \
           BoundingVolume.cpp \
           BroadInteractor.cpp \
           DeusExMachina.cpp \
           FileGenerator.cpp \
           FrontEnd.cpp \
           GeometricalModel.cpp \
           InteractingGeometry.cpp \
           InteractionContainer.cpp \
           Interaction.cpp \
           InteractionSolver.cpp \
           MetaBody.cpp \
           NullGUI.cpp \
           Omega.cpp \
           PhysicalActionContainer.cpp \
           PhysicalParameters.cpp \
           SimulationLoop.cpp \
           yade.cpp \
           yadeExceptions.cpp \
           Preferences.cpp 
