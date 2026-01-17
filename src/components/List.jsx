import React, { useEffect, useState } from "react";
import axios from "axios";
import { Card } from "./Card";
import { useParams } from "react-router-dom";

export const List = () => {
  const [anime, setAnime] = useState([]);

  const { id } = useParams();

  const fetch = async () => {
    const data = await axios.get(
      `https://api.jikan.moe/v4/top/${id ? id : "manga"}`
    );
    setAnime(data.data.data);
  };

  useEffect(() => {
    fetch();
  }, [id]);

  return (
    <div className='cards'>
      {anime?.map(naruto => (
        <Card all={naruto} key={naruto.mal_id} />
      ))}
    </div>
  );
};
