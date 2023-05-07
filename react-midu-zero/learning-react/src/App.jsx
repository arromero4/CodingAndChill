import { TwitterFollowCard } from "./TwitterFollowCard";
export function App() {
  
  return (
    <section className="App">
      <TwitterFollowCard isFollowing username="arromero491">
        Andres Romero
      </TwitterFollowCard>

      <TwitterFollowCard isFollowing={false} username="midudev">
        Miguel Angel Duran
      </TwitterFollowCard>
    </section>
  );
}
