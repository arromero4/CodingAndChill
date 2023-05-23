import "./App.css";
import { Otro } from "./components/Otro";
import { useCatFact } from "./hooks/useCatFact";
;import { useCatImage } from "./hooks/useCatImage";





export function App() {
  const { fact, refreshFact } = useCatFact()
  const { imageUrl } = useCatImage({ fact }) 
  
  //siempre poner las dependencias
  //useEffect(() =>{},[])

  // useEffect(() =>{
  //   async function getRandomFact(){
  //     const res = await fetch(CAT_ENDPOINT_RANDOM_FACT)
  //     const json = await res.json()
  //     setFact(json.fact)
  //   }
  //   getRandomFact()
  // },[])



  const handleClick = async () => {
    refreshFact()
  }

  return (
    <main>
      <h1>App de Gatitos</h1>


        <button onClick={handleClick}>
          Get new fact!
        </button>
        {fact && <p>{fact}</p>}
        {imageUrl && (
          <img
            src={imageUrl}
            alt={`Image extracted using the first three words for ${fact}`}
          />
        )}
        <Otro />
    </main>
  );
}
