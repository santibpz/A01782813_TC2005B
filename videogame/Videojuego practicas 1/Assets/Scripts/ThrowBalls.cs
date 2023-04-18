/*
 Create copies of ball objects
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThrowBalls : MonoBehaviour
{
    [SerializeField] GameObject ball;
    public float delay;
    public float limit; // coordenates where to generate the balls

    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("CreateBall", delay, delay);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void CreateBall()
    {
        Vector3 newPos = new Vector3(Random.Range(-limit, limit), 6.5f, 0);
        // Create a copy of the ball prefab
        Instantiate(ball, newPos, Quaternion.identity); // quaternion for rotation

    }
}
