#!/usr/bin/env python
# coding: utf-8

# ## Importando bibliotecas

# In[27]:


import numpy as np
import pandas as pd
from scipy.stats import describe, skew, kurtosis, norm
import matplotlib.pyplot as plt
import seaborn as sns


# ## Criando nossa amostra

# In[28]:


# Amostra
c0 = np.array([7,1,5,2,3,1,6])


# ## Calculando as frequências 

# In[29]:


table = pd.DataFrame(c0,columns=['a'])
table.groupby(['a']).size()


# ## Calculando média, mediana e moda

# In[36]:


#Média
media = np.mean(c0)
#Mediana
mediana = np.median(c0)
#Moda
moda = np.mode(c0)
#Cuidado
print('A amostra possui média {}, mediana {}, e moda {}'.format(media,mediana, moda[0][0]))


# ## Printar assimetria e kurtosis

# In[37]:


assimetria = skew(c0)
kurt = kurtosis(c0)
print('Os dados possuem assimetria de {} e Kurtosis de {}'.format(assimetria, kurt))


# ## Estatísticas descritivas da nossa amostra

# In[38]:


describe(c0)


# # Gráficos

# ## Plotando gráficos

# In[39]:


#Plotar gráficos
fig, ax=plt.subplots(2,2)
ax[0,0].bar(c0,c0)
sns.histplot(c0, bins = 4, ax = ax[0,1])
sns.distplot(c0,ax = ax[1,0], kde = True, bins = 4,)
plt.show()


# In[ ]:




