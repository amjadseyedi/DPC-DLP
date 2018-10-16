# DPC-DLP

  ## Dynamic graph-based label propagation for density peaks clustering
  
  *Seyed Amjad Seyedi, Abdulrahman Lotfi, Parham Moradi, Nooruldeen Nasih Qader*
  
  *Expert Systems with Applications 2019, 314-328*
  
  *https://doi.org/10.1016/j.eswa.2018.07.075*

  # Abstract

Clustering is a major approach in data mining and machine learning and has been successful in many real-world applications. Density peaks clustering (DPC) is a recently published method that uses an intuitive to cluster data objects efficiently and effectively. However, DPC and most of its improvements suffer from some shortcomings to be addressed. For instance, this method only considers the global structure of data which leading to missing many clusters. The cut-off distance affects the local density values and is calculated in different ways depending on the size of the datasets, which can influence the quality of clustering. Then, the original label assignment can cause a “chain reaction”, whereby if a wrong label is assigned to a data point, and then there may be many more wrong labels subsequently assigned to the other points. In this paper, a density peaks clustering method called DPC-DLP is proposed. The proposed method employs the idea of k-nearest neighbors to compute the global cut-off parameter and the local density of each point. Moreover, the proposed method uses a graph-based label propagation to assign labels to remaining points and form final clusters. The proposed label propagation can effectively assign true labels to those of data instances which located in border and overlapped regions. The proposed method can be applied to some applications. To make the method practical for image clustering, the local structure is used to achieve low-dimensional space. In addition, proposed method considers label space correlation, to be effective in the gene expression problems. Several experiments are performed to evaluate the performance of the proposed method on both synthetic and real-world datasets. The results demonstrate that in most cases, the proposed method outperformed some state-of-the-art methods.
