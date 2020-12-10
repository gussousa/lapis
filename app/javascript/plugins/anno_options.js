
import { Annotorious } from '@recogito/annotorious';

const initAnnotorious = () => {  
  const anno = new Annotorious({
    image: document.getElementById('annotable')
  });
  
  anno.on('createAnnotation', function(annotation){
    alert("Anotação feita")
    console.log(annotation)
  })

}

export {initAnnotorious} 