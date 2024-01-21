#!/usr/bin/env python
# coding: utf-8

# ## Importando bibliotecas

# In[1]:


import numpy as np
import pandas as pd


# ## Gerar dados

# In[9]:


idade = np.array([10,10,10,10,30,30,30,30,30,30,30,30,50,50,50,50,70,70,70,90])
idade


# ## Tipo de classe

# In[4]:


idade.dtype


# In[5]:


# Ou
idade_rep = np.concatenate([np.repeat(10,4), np.repeat(30,8), np.repeat(50,4),np.repeat(70,3), np.repeat(90,1)])
idade_rep


# In[7]:


# Ou
idade_rep = np.repeat(np.array([10,30,50,70,90]), repeats = [4,8,4,3,1], axis = 0)
idade_rep


# ## Verificando

# In[10]:


idade==idade_rep


# ## Transformar em tabela (Data Frame)

# In[13]:


table = pd.DataFrame(idade, columns=['a'])
table
#table.value_counts()
#table.columns = ['Idade', 'Freq']


# ## Calculando as frequências simples

# In[14]:


table.groupby(['a']).size()


# ## Quantidade total de alunos

# In[16]:


table.groupby(['a']).size().sum()


# In[17]:


tablenovo=pd.DataFrame(table.groupby(['a']).size())
tablenovo


# ## Adicionar Colunas de Frequências

# In[18]:


#table['Freq_acumulada'] = table['Freq'].cumsum()
tablenovo['Freq_acumulada'] = table.groupby(['a']).size().cumsum()
tablenovo


# In[20]:


tablenovo['Freq_relativa_simples'] = table.groupby(['a']).size().cumsum()/tablenovo['Freq_acumulada'].sum()
tablenovo


# In[22]:


tablenovo['Freq_relativa_acumulada'] = tablenovo['Freq_relativa_simples'].cumsum()
tablenovo


# In[23]:


print(tablenovo.head())


# In[ ]:





# In[ ]:




