import { useEffect, useState } from "react";
import "./App.css";
import { Movies } from "./components/Movies.jsx";
import { useMovies } from "./hooks/useMovies.js";
//keep learning hooks caradeverga
function useSearch(){
  const [search, updateSearch] = useState('')
  const [error, setError] = useState(null);
  useEffect(() => {
    if(search === ''){
      setError('No se puede buscar una película vacía')
      return
    }
    if(search.match(/^\d+$/)){
      setError('No se puede buscar una película con números')
      return
    }
    if(search.length < 3){
      setError('No se puede buscar una película con menos de 3 caracteres')
      return
    }

    setError(null)
  },[search])
  return {search, updateSearch, error}
}

function App() {
  const { movies } = useMovies();
  const { search, updateSearch, error } = useSearch();

  const handleSubmit = (event) => {
    event.preventDefault();

    console.log({ search });
  };

  const handleChange = (event) => {
    const newSearch = event.target.value
    updateSearch(newSearch)
  }

 


  return (
    <div className="page">
      <header>
        <h1>Buscador de Películas</h1>
        <form className="form" onSubmit={handleSubmit}>
          <input
            value={search}
            onChange={handleChange}
            name="query"
            type="text"
            placeholder="Avengers, Star Wars, The Matrix..."
            style={{
              border: "1px solid transparent",
              borderColor: error ? "red" : "transparent"
            }}
          />
          <button type="submit">Buscar</button>
        </form>
        {error && <p style={{ color: 'red'}}>{error}</p>}
      </header>
      <main>
        <Movies movies={movies} />
      </main>
    </div>
  );
}
export default App;
