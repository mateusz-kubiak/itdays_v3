package net.atos.itdays.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity 
public class Lecture {

	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "LECTURE_ID", nullable = false)
    private Long lectureId;
	
	private String topic;
	
	@JoinColumn(name="SPEAKER_ID")
//	@ManyToOne(fetch=FetchType.LAZY)
	private Long speakerId;

	public Long getLectureId() {
		return lectureId;
	}

	public void setLectureId(Long lectureId) {
		this.lectureId = lectureId;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	
	public Long getSpeakerId() {
		return speakerId;
	}

	public void setSpeakerId(Long speakerId) {
		this.speakerId = speakerId;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((speakerId == null) ? 0 : speakerId.hashCode());
		result = prime * result + ((topic == null) ? 0 : topic.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Lecture other = (Lecture) obj;
		if (speakerId == null) {
			if (other.speakerId != null)
				return false;
		} else if (!speakerId.equals(other.speakerId))
			return false;
		if (topic == null) {
			if (other.topic != null)
				return false;
		} else if (!topic.equals(other.topic))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Lecture [lectureId=" + lectureId + ", topic=" + topic + ", speakerId=" + speakerId + "]";
	}
	
}
