#ifndef __TRANSLATOR_H__
#define __TRANSLATOR_H__

#include "KinematicEngine.hpp"

#ifdef WIN32
#include <windows.h>
#endif

#include "Vector3.hpp"

class Translator : public KinematicEngine
{

	public : float velocity;
	public : Vector3 translationAxis;
	
	// construction
	public : Translator ();
	public : virtual ~Translator ();

	public : void moveToNextTimeStep(Body * body);

	public : void processAttributes();
	public : void registerAttributes();
	REGISTER_CLASS_NAME(Translator);
};

REGISTER_SERIALIZABLE(Translator,false);

#endif // __TRANSLATOR_H__
