import Image from 'next/image'

import {Hero, Hero2} from "@components";


export default function Home() {
  return (
    <main className='overflow-hidden'>
    <Hero />    
    <Hero2 />    

    </main>
  )
}
