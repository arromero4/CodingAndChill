import React from "react";

function BtnComponent({ status, start, stop, reset, resume }) {
  return (
    <div>
      {status === 0 ? (
        <button className="bg-[#E00700] text-white mt-8 ml-2 py-3 px-5 text-sm uppercase rounded-lg hover:bg-white border border-[#E00700] border-solid border-2 hover:text-black hover:border border-[#E00700] border-3 transition duration-500 ease-in-out" 
        onClick={start}>
          Start
        </button>
      ) : (
        ""
      )}
      {status === 1? (
        <div>
          <button className="bg-[#E00700] text-white mt-8 ml-2 py-3 px-5 text-sm uppercase rounded-lg hover:bg-white border border-[#E00700] border-solid border-2 hover:text-black hover:border border-[#E00700] border-3 transition duration-500 ease-in-out"  onClick={stop}>
          Stop
        </button>
        <button className="bg-[#E00700] text-white mt-8 ml-2 py-3 px-5 text-sm uppercase rounded-lg hover:bg-white border border-[#E00700] border-solid border-2 hover:text-black hover:border border-[#E00700] border-3 transition duration-500 ease-in-out"  onClick={reset}>
          Reset
        </button>
        </div>
      ) : (
        ""
      )}
      {status === 2? (
        <div>
          <button className="bg-[#E00700] text-white mt-8 ml-2 py-3 px-5 text-sm uppercase rounded-lg hover:bg-white border border-[#E00700] border-solid border-2 hover:text-black hover:border border-[#E00700] border-3 transition duration-500 ease-in-out"  onClick={resume}>
          Resume
        </button>
        <button className="bg-[#E00700] text-white mt-8 ml-2 py-3 px-5 text-sm uppercase rounded-lg hover:bg-white border border-[#E00700] border-solid border-2 hover:text-black hover:border border-[#E00700] border-3 transition duration-500 ease-in-out"  onClick={reset}>
          Reset
        </button>
        </div>
      ) : (
        ""
      )}
    </div>
  );
}

export default BtnComponent;
