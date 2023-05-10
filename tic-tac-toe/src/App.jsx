import { useState } from "react";
import "./App.css";
import confetti from "canvas-confetti";
import { Square } from "./components/Square";
import { TURNS } from "./constants.js"
import { checkWinnerFrom, checkEndGame } from './logic/board.js'
import { WinnerModal } from "./components/WinnerModal";

function App() {

  const [board, setBoard] = useState(() => {
    const boardFromStorage = window.localStorage.getItem('board')
    return boardFromStorage ? JSON.parse(boardFromStorage):Array(9).fill(null)
  });
  const [turn, setTurn] = useState(()=>{
    const turnFromStorage = window.localStorage.getItem('turn')
    return turnFromStorage ?? TURNS.X
  });
  const [winner, setWinner] = useState(null)//null es que no hay ganador, false es que hay un empate

  




  const updateBoard = (index) =>{

    //no se actualiza si ya tiene algo
    if(board[index] || winner) return
    //Actualiza tablero
    const newBoard = [...board]
    newBoard[index] = turn 
    setBoard(newBoard)
    //cambiar el turno
    const newTurn = turn === TURNS.X ? TURNS.O: TURNS.X
    setTurn(newTurn)
    //guardar partida aquí
    window.localStorage.setItem('board', JSON.stringify(newBoard))
    window.localStorage.setItem('turn', newTurn)
    //Revisar si hay un ganador
    const newWinner = checkWinnerFrom(newBoard)
    if(newWinner){
      confetti()
      setWinner(newWinner)
      //alert(`El ganador ${newWinner}`)
    }
    else if(checkEndGame(newBoard)){
      setWinner(false)//significa que hay un empate
    }//revisar si el juego terminó
    
  }

  const resetGame = () =>{
    setBoard(Array(9).fill(null))
    setTurn(TURNS.X)
    setWinner(null)

    window.localStorage.removeItem('board')
    window.localStorage.removeItem('turn')
  }


  return (
    <main className="board">
       <button onClick={resetGame}>Empezar de nuevo
       </button>
             
      <h1>Tic Tac Toe</h1>
      <section className="game">
        {board.map((square, index) => {
          return <Square 
          key={index} 
          index={index}
          updateBoard={updateBoard}
          >
            {square}
          </Square>;
        })}
      </section>
      <section className="turn">
        <Square isSelected={turn === TURNS.X}>{TURNS.X}</Square>
        <Square isSelected={turn === TURNS.O}>{TURNS.O}</Square>
      </section>

      <WinnerModal resetGame={resetGame} winner={winner}/>
    </main>
  );
}

export default App;
