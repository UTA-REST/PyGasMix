import os
import numpy as np
def fillOutTextData(GasMixObj):
    gd = np.load(os.path.join(os.path.dirname(os.path.realpath(__file__)),"Gases_Text_Data.npy"),allow_pickle=True).item()
    for gasId in GasMixObj.Gases:
        if gasId !=0:
            GasMixObj.ExtraOutputs['gas'+str(gasId)]=gd['gas'+str(gasId)]

