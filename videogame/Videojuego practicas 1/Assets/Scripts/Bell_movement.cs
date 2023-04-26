using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bell_movement : MonoBehaviour
{
    [SerializeField] float angleLimit;
    [SerializeField] float speed;
    [SerializeField] float ringDuration;
    [SerializeField] float motionDecay;

    AudioSource audioSource;

    float angle;
    int direction = 1; // Dirección positiva
    float t = 0.5f;
    bool isRinging = false;
    float timeElapsed;
    float multiplier;

    // Start is called before the first frame update
    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        if(isRinging){
            Ring();
            timeElapsed += Time.deltaTime;
            if(timeElapsed > ringDuration){
                isRinging = false;
            }
        }

        if(Input.GetKeyDown(KeyCode.R)){
            StartRing();
        }
    }

    public void StartRing()
    {
        t = 0.5f;
        timeElapsed = 0;
        isRinging = true;
        audioSource.Play();
        multiplier = 1;
    }

    void Ring()
    {
        angle = Mathf.Lerp(-angleLimit, angleLimit, t) * multiplier;
        transform.localRotation = Quaternion.Euler(0, 0, angle);

        t += direction * speed * Time.deltaTime;

        if(t > 1 || t < 0){
            direction *= -1;
        }
    }
}

