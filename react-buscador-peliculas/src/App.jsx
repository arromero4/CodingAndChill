import { useEffect, useState } from "react";
import "./App.css";
import { Movies } from "./components/Movies.jsx";
import { useMovies } from "./hooks/useMovies.js";

function App() {
  const { movies } = useMovies();
  const [query, setQuery] = useState("");
  const [error, setError] = useState(null);

  const handleSubmit = (event) => {
    event.preventDefault();
    //const { query } = Object.fromEntries(new window.FormData(event.target));
    console.log({ query });
  };

  const handleChange = (event) => {
    const newQuery = event.target.value
    if(newQuery.startsWith(' ')) return
    setQuery(event.target.value)
  }

  useEffect(() => {
    if(query === ''){
      setError('No se puede buscar una película vacía')
      return
    }
    if(query.match(/^\d+$/)){
      setError('No se puede buscar una película con números')
      return
    }
    if(query.length < 3){
      setError('No se puede buscar una película con menos de 3 caracteres')
      return
    }

    setError(null)
  },[query])


  return (
    <div className="page">
      <header>
        <h1>Buscador de Películas</h1>
        <form className="form" onSubmit={handleSubmit}>
          <input
            value={query}
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
