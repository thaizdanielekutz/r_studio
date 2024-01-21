#!/usr/bin/env python
# coding: utf-8

# ## Importando as bibliotecas e Dataset

# In[6]:


# Importar bibliotecas e dataset
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris


# In[9]:


# Carregar dataset
iris = load_iris(as_frame = True)
data = pd.DataFrame(iris.data)
data


# ## Selecionando a amostra a0

# In[10]:


# Amostra 0
a0 = data['sepal length (cm)']
a0


# ## Calculando amplitude amostral

# In[11]:


# Amplitude amostral
h0 = np.max(a0) - np.min(a0)
h0


# In[13]:


a0.describe


# ## variância amostral

# In[14]:


#ddof = Delta Degrees of Freedom - valor removido da divisão (N - ddof)
#Se quizermos da população, podemos deixar padrão ou colocar ddof = 0
var0 = np.var(a0, ddof=1)
print('Variância = {}'.format(var0))


# ## Desvio padrão amostral

# In[15]:


#Segue o modelo também da variância
sd0 = np.sqrt(var0)
sd0 = np.std(a0, ddof=1)
print('Desvio Padrão = {}'.format(sd0))


# ## Coeficiente de Variação Amostral

# In[16]:


cv = np.std(a0, ddof = 1)/np.mean(a0)*100
print('Coeficiente de Variação é de {}%'.format(cv))


# ## Selecionando a amostra a1

# In[17]:


#Amostra 0
a1 = data['petal length (cm)']
a1


# ## Calculando amplitude amostral

# In[18]:


# Amplitude amostral
h1 = np.max(a1) - np.min(a1)
h1


# In[19]:


a1.describe


# ## Variância Amostral

# In[20]:


#ddof = Delta Degrees of Freedom - valor removido da divisão (N - ddof)
#Se quizermos da população, podemos deixar padrão ou colocar ddof = 0
var1 = np.var(a1, ddof=1)
print('Variância = {}'.format(var1))


# ## Desvio padrão amostral

# In[21]:


#Segue o modelo também da variância
sd1 = np.sqrt(var1)
sd1 = np.std(a1, ddof=1)
print('Desvio Padrão = {}'.format(sd1))


# ## Coeficiencia de Variação Amostral

# In[22]:


cv = np.std(a1, ddof = 1)/np.mean(a1)*100
print('Coeficiente de Variação é de {}%'.format(cv))


# ## Comparação

# In[23]:


plt.plot(a0, 'ro', c = 'grey')
plt.axhline(np.mean(a0))
plt.title('Gráfico da Amostra 0')
plt.show()

plt.plot(a1, 'ro', c = 'blue')
plt.axhline(np.mean(a1))
plt.title('Gráfico da Amostra 1')
plt.show()


# In[ ]:




