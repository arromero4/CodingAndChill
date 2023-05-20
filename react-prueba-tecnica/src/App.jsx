import { useState, useEffect } from "react";
import "./App.css";

const CAT_ENDPOINT_RANDOM_FACT = "https://catfact.ninja/fact";
const CAT_PREFIX_IMAGE_URL = "https://cataas.com";

export function App() {
  const [fact, setFact] = useState("");
  const [imageUrl, setImageUrl] = useState(null);

  //siempre poner las dependencias
  //useEffect(() =>{},[])

  //un efecto para recuperar la cita al cargar la pagina
  useEffect(() => {
    fetch(CAT_ENDPOINT_RANDOM_FACT)
      .then((res) => res.json())
      .then((data) => {
        const { fact } = data;
        setFact(fact);
      });
  }, []);

  // useEffect(() =>{
  //   async function getRandomFact(){
  //     const res = await fetch(CAT_ENDPOINT_RANDOM_FACT)
  //     const json = await res.json()
  //     setFact(json.fact)
  //   }
  //   getRandomFact()
  // },[])

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
  }, []);

  return (
    <main>
      <h1>App de Gatitos</h1>
      <section>
        {fact && <p>{fact}</p>}
        {imageUrl && (
          <img
            src={`${CAT_PREFIX_IMAGE_URL}${imageUrl}`}
            alt={`Image extracted using the first three words for ${fact}`}
          />
        )}
      </section>
    </main>
  );
}
