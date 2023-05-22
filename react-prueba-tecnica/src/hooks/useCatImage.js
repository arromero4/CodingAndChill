import { useEffect, useState } from "react";

const CAT_PREFIX_IMAGE_URL = "https://cataas.com";

export function useCatImage({ fact }){
    const [imageUrl, setImageUrl] = useState(null);
      //para recuperar la imagen cada vez que tenemos una cita nueva
      useEffect(() => {
        if (!fact) return;
        //const firstWord = fact.split(' ').slice(0,3).join(' ')
        const firstWords = fact.split(" ", 3).join(" ");
        console.log(firstWords);
    
        fetch(
          `https://cataas.com/cat/says/${firstWords}?size=50&color=red&json=true`
        )
          .then((res) => res.json())
          .then((response) => {
            console.log(response);
            const { url } = response;
            setImageUrl(url);
          });
      }, [fact])
  
      return { imageUrl: `${CAT_PREFIX_IMAGE_URL}${imageUrl}` }
  }