/*Script to track points scored */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class Score : MonoBehaviour
{
    [SerializeField] ParticleSystem starParticles; 
    //[SerializeField] GameObject particles;
    [SerializeField] TMP_Text scoreText;
    [SerializeField] Bell_movement bell;
    [SerializeField] ThrowBalls throwballs;
    [SerializeField] int pointLimit;
    int points;
    // Start is called before the first frame update
    void Start()
    {
        points = 0;
    }
 
    void OnTriggerEnter2D(Collider2D collision)
    {
        points += 1;
        print("Points: " + points);
        scoreText.text = "Score: " + points;
        starParticles.Emit(15); 
        //Instantiate(particles, transform.position, Quaternion.identity);
        bell.StartRing();

        if(points == pointLimit){
            throwballs.Stop();
            scoreText.text = "Ganaste";
        }
    } 
}
