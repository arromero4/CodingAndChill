import { useEffect } from "react";

export function TasksList() {
  useEffect(() => {
    console.log("Tasks List");
  }, []);

  return <div>TasksList</div>;
}
