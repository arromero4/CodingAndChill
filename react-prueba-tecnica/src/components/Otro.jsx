import React from "react";
import { useCatImage } from "../hooks/useCatImage";

export function Otro() {
  const { imageUrl } = useCatImage({ fact: 'cat' })
  return <>
   { imageUrl &&  <img src={imageUrl} />}
  </>;
}
