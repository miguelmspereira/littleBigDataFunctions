#BIG DATA FUNCTIONS

#Count elements in a vector
count<-function(vector,element){
  if(length(vector)==0){print('Object has length zero')}
  else {length(which(vector==element))}
}


#Shows the number of rows and columns
show<-function(obj,row=10,col=10){
  
  if(class(obj)=='matrix' | class(obj)=='data.frame'){
    if(nrow(obj)>row & ncol(obj)>col) return(obj[1:row,1:col])
    if(nrow(obj)<row & ncol(obj)<col) return(obj[1:nrow(obj),1:ncol(obj)])
    else{
      if(nrow(obj)<row) return(obj[1:nrow(obj),1:col])
      if(ncol(obj)<col) return(obj[1:row,1:ncol(obj)])
    }
  }
class(nrow(obj))
  if(class(obj)=='list') {return(str(obj))}
  
  if(class(obj)!='matrix' & class(obj)!='data.frame' & class(obj)!='list'){
    if(length(obj)<row) return(obj[1:length(obj)])
    else return(obj[1:row])
  }
}


#Orders the elements of a vector or the elements of a data.frame/matrix, if specified, according to a given vector
ordering<-function(mat=c(),obj){
  if(length(mat)==0 & length(obj)!=0){
    return(obj[order(obj)])
  }
  
  else{
    if(length(obj)!=nrow(mat)){print('Vector and matrix have different dimensions')}
    if((class(mat)=='matrix' | class(mat)=='data.frame') & length(obj)!=0){
      return(mat[order(obj),])
    }
    else print('Provide a different vector and/or matrix')
  }
}

