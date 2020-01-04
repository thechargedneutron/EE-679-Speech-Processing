#importing the required packages
import numpy as np
from scipy.io import wavfile


# Function to add 10dB SNR noise to a speech utterance. 
# Description = Clips a segment of noise from a random position from the noise file. 
# The noise segment is normalized and added to the speech. The noisy speech is saved to a separate file.
# Inputs:
# speechfile = Path to the speech utterance .wav file
# noisefile = Path to the noise .wav file
# outputfile = Path (along with a .wav file name) where the noisy speech file must be saved

def add_noise(speechfile, noisefile, outputfile):
    
    #reading the .wav files
    sampFreq, noise = wavfile.read(noisefile)
    sampFreq, speech = wavfile.read(speechfile)
    numSamples = len(speech)

    #clipping a segment of noise from a random position, with segment length equal to the length of speech 
    i = np.random.choice(np.arange(len(noise) - numSamples))
    noise = noise[i:i+numSamples]

    #converting the PCM values to floats with range from -1.0 to 1.0
    speech = speech/32768
    noise = noise/32768

    #normalizing the noise and adding it to the speech
    rawEnergy = np.sum(speech**2)
    noise = noise*(np.sqrt(rawEnergy/(10*np.sum(noise**2))))
    speech = speech + noise

    #normalizing the noisy speech so that its energy equals the energy of raw speech
    speech = speech*(np.sqrt(rawEnergy/np.sum(speech**2)))

    #converting the floats back to PCM values
    speech = speech*32767
    speech = speech.astype(np.int16)

    #saving the noisy speech to the output file
    wavfile.write(outputfile, sampFreq, speech)
    
    return



if __name__ == "__main__":
    
    #Function used to add noisy into a new directory of train_noisy
    #Randomly chooses one of the noise
    noisefiles = ["Commands_Dataset/_background_noise_/doing_the_dishes.wav", "Commands_Dataset/_background_noise_/dude_miaowing.wav", "Commands_Dataset/_background_noise_/exercise_bike.wav", "Commands_Dataset/_background_noise_/pink_noise.wav", "Commands_Dataset/_background_noise_/running_tap.wav", "Commands_Dataset/_background_noise_/white_noise.wav"]
    train_location = "Commands_Dataset/train/"
    train_noise_location = "Commands_Dataset/train_noisy/"
    for f in os.listdir(train_location):#os.listdir(dir)
        for w in os.listdir(train_location + f):
        	random_noise = np.random.randomint(len(noisefiles))
        	add_noise(train_location+ f + '/' + w, noisefiles[random_noise], train_noise_location+ f + '/' + w)
