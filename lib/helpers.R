for(func in 1:length(dir('R'))){
  print(paste('src: ', dir('R')[func]))
  source(dir('R', full.names=T)[func])
}