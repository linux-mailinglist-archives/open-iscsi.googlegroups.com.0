Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBXOLW6OAMGQECX4I36Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB52D642892
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Dec 2022 13:36:47 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id g3-20020ac84b63000000b003a529c62a92sf32846123qts.23
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Dec 2022 04:36:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670243806; cv=pass;
        d=google.com; s=arc-20160816;
        b=V86/mg1HuY+eY1/R0OIl4iCoJMB7K+9tv30rJO3x306TBzvsZGFqo6oCE2S7c07fby
         rk6FvW6v6icIJnW17zTCTXkwju/7M7zZkPO6GMhaxzBHp4CQ+fz/iZW92Kd+QlwhJOlD
         nX6CW977ceCG7//i7+jS4gVl9pL4afn/nBcpLHkF4/qDD5JilTLzYnmxGJSqL2LY15vH
         0Z7WNb8xooo0BPqJSKo5ysrEIko+saHduIUaxH7uiRjOpjgzkDU8nzuXPcEXvqYVQ5tz
         IvvO3eIjy3aObGcJhUalMijVctazdepBAriRWdAlhNEwx4/Lk8XYwG3TYHUkQBBhxJ2+
         Fd8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=bCTidWHGH1EM/81qsHGq72ItoiT4Bq/jcBMAAWn9exM=;
        b=bYmsdWk4AHmoiSLZmfL9jvifbCkiXQ1ACcCfkuBEKhYP1Gg8EEYHZ5KqJSRcH+Fnha
         OyXQGzE5HjeYaSNzbkhFMmD9LMhEvnkdtIPE8SjpnRQwVsquod+NSLNNFOEUDEHueeih
         GU6MPQtnNZqsHmfteeQANENtG0t3KYGe8z21wQ9p0Ri0MKz8A/+HGPESwHPxocYYxvTp
         rh+yyPXmmRboc+4beR2CFZ/3OHmCZqmJxGeYgBrwelerzw9Ouqgs32GlL6HIKRUn7qW2
         H4eFWsp7GhasS2TkQh3wffAkOwaitFp3+WqbEpOsXduohUZon0lRaqJBIfSnW25Rf7HL
         G/VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bCTidWHGH1EM/81qsHGq72ItoiT4Bq/jcBMAAWn9exM=;
        b=nGTUUFsz2tUCPVxE3Bp5Oyxu9WyezEfvtDjRWKeN9m0R2S/rHNXFnzDCHwmjZhg27Z
         PbNBZhyKKroZKZB1VoJfMlva0mIuHTRfNvSXLWjQkoQHvwLPOvGTm38TdyD4aIVcGeaM
         SsSEccnct6BgeL9mjDLMoIjMmmSghZ8ngo4RqAxKi8QwenbQY4koYPalYp0zrfDDTFc5
         e4R1WIpjs1Dmza8ohlijuqbYIpX/XPGpraGXwLZm61pzfBTUzWNXOQLRpE5NIjIH94lm
         Tu4TIHE2r4NzDr4cIRa2xr+5frZ7eJZyTrtWVuPYTLPwEOk8loIWXIo910sgE9qimWiK
         wALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bCTidWHGH1EM/81qsHGq72ItoiT4Bq/jcBMAAWn9exM=;
        b=g5XLUJQxg2vDoB5Vh/Xe9aeGPTLtjFUTU26fvbLvrxr0VxZWbQ9UpfQDuFjIC1Puqi
         d5CJUOoCQk5jBmbSnqUvYTeDf6FactX66m6mOgKgRTN0aemFOV0H9P8322CCwxSHpEHZ
         bMFV82FLA9ln/rJ9b9GUI6hOcd9rjs6cEtBUiYY6JA5RrQCkwD8S0tMg3HaYT1qRIuzS
         PWy9frzfktsQD4pssNqt1t+DWzutEp3fkTeANNBNrcjvRWV1c6cx0S7wj+Ld9F6VDE3N
         vnqxRkEaAPuEXpONB8IOfm1HE3ig4EYdeI3cklNWWfA9pSgNZFttL7rIr5NsySY7yI2z
         hNuQ==
X-Gm-Message-State: ANoB5pmxanyzg2cPeQteXUCbOW6KArCF2wlaB4pNAmPK6sPUp0LRzMBx
	DNJiMYt3i4YU6rVpsGGqU1A=
X-Google-Smtp-Source: AA0mqf4351SRP7Xb7iWRRXppaQwrvWi9bnS3yIoVvU44SHR8bqfcK2WEwrjMeLtTjHYEG781VEiSXA==
X-Received: by 2002:ae9:c017:0:b0:6fc:65f8:33d9 with SMTP id u23-20020ae9c017000000b006fc65f833d9mr37068247qkk.39.1670243806245;
        Mon, 05 Dec 2022 04:36:46 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:b681:0:b0:4c6:a6d3:e77 with SMTP id u1-20020a0cb681000000b004c6a6d30e77ls2338095qvd.10.-pod-prod-gmail;
 Mon, 05 Dec 2022 04:36:44 -0800 (PST)
X-Received: by 2002:a0c:c3ca:0:b0:4ba:8938:7d18 with SMTP id p10-20020a0cc3ca000000b004ba89387d18mr57184663qvi.54.1670243804478;
        Mon, 05 Dec 2022 04:36:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670243804; cv=none;
        d=google.com; s=arc-20160816;
        b=F0Bb6DyBD42pDNJcNvwWyZ1ZvmxQbFlMjzcxpcAKa+G74AdTem3QROFAQUiIpsMe3d
         IavExKW/R5fAu4pn59/fEm57lIfmyjk7FZKDAK6gUeMc3QhcPwUNRt9G8kq7Teg8rgGg
         GShMRjt4qDYomB988iCaVAsO4soSLAee2mAOPBQpeV87rjNEG6ndKf4jhxxQvXWEDoei
         Brk4sJYNtxKStSsW7MtlCzPRnBl8upqCUyr7f0KqxNgMlmDDY+r/WYhMNMpMUIz41nfE
         dgtC5u1q49h+zC+T5i7i+GhiD4QEb/8/BR8T1dUb81GoQiy7oBzWACQdciYJabrtVAGI
         AcGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=bSrIPFTbU+lwDLWsrXxNYaylh/NUR7qxKjHtwHimdvo=;
        b=AECwLnOjAMcyG5mqsL032cDcQDPeTMEbEy20EbjwLWuTjwetjv0epBpDS/EZL8t/uR
         ToVSFq8nIXaho20Wh8b6vrOahqmy4c1txSRA+VL1Ml9sz5Kb2ML7Ue2a/tOIDzSOiiIG
         xlEMFcvfZ1k7G+/1xj7OKfLfEtbBu1VwQIJCo9DtzoRjUz5mikE2xATpKDhOOCZnREom
         Ua19IBd/ymOJXXVBrKZr8Z1etHhKq2zM4JgWXBIWT2XBj21DCng/iWQNLJi8fSyuFbIN
         TsUHQ4jTVm2z+oE2J1dvUd4I1KCTyYgwGSqxh3SIdFC6WuUi+bO997FuUzPPyninzOIt
         CLdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id h16-20020ac87770000000b003a4f2725cd1si661307qtu.4.2022.12.05.04.36.44
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 04:36:44 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NQjbj2QvSzqSsj;
	Mon,  5 Dec 2022 20:32:01 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 5 Dec 2022 20:36:08 +0800
Message-ID: <105fcfc2-2518-cf61-c17c-9848b32da8fd@huawei.com>
Date: Mon, 5 Dec 2022 20:36:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v7] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, Mike
 Christie <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20221126010752.231917-1-haowenchao@huawei.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20221126010752.231917-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml100024.china.huawei.com (7.185.36.115) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 2022/11/26 9:07, Wenchao Hao wrote:
> I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
> for multiple times which should be fixed.
> 
> This patch introduce target_state in iscsi_cls_session to make
> sure session would send only one ISCSI_KEVENT_UNBIND_SESSION.
> 
> But this would break issue fixed in commit 13e60d3ba287 ("scsi: iscsi:
> Report unbind session event when the target has been removed"). The issue
> is iscsid died for any reason after it send unbind session to kernel, once
> iscsid restart again, it loss kernel's ISCSI_KEVENT_UNBIND_SESSION event.
> 
> Now kernel think iscsi_cls_session has already sent an
> ISCSI_KEVENT_UNBIND_SESSION event and would not send it any more. Which
> would cause userspace unable to logout. Actually the session is in
> invalid state(it's target_id is INVALID), iscsid should not sync this
> session in it's restart.
> 
> So we need to check session's target state during iscsid restart,
> if session is in unbound state, do not sync this session and perform
> session teardown. It's reasonable because once a session is unbound, we
> can not recover it any more(mainly because it's target id is INVALID)
> 
> V7:
> - Define target state to string map and refer this map directly
> - Cleanup __iscsi_unbind_session, drop check for session's
>   target_id == ISCSI_MAX_TARGET since it can be handled by target_state
> 
> V6:
> - Set target state to ALLOCATED in iscsi_add_session
> - Rename state BOUND to SCANNED
> - Make iscsi_session_target_state_name() more efficient
> 
> V5:
> - Add ISCSI_SESSION_TARGET_ALLOCATED to indicate the session's
>   target has been allocated but not scanned yet. We should
>   sync this session and scan this session when iscsid restarted.
> 
> V4:
> - Move debug print out of spinlock critical section
> 
> V3:
> - Make target bind state to a state kind rather than a bool.
> 
> V2:
> - Using target_unbound rather than state to indicate session has been
>   unbound
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 47 ++++++++++++++++++++++++++---
>  include/scsi/scsi_transport_iscsi.h |  9 ++++++
>  2 files changed, 51 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index cd3db9684e52..812578c20fe5 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -1676,6 +1676,13 @@ static const char *iscsi_session_state_name(int state)
>  	return name;
>  }
>  
> +static char *iscsi_session_target_state_name[] = {
> +	[ISCSI_SESSION_TARGET_UNBOUND]   = "UNBOUND",
> +	[ISCSI_SESSION_TARGET_ALLOCATED] = "ALLOCATED",
> +	[ISCSI_SESSION_TARGET_SCANNED]   = "SCANNED",
> +	[ISCSI_SESSION_TARGET_UNBINDING] = "UNBINDING",
> +};
> +
>  int iscsi_session_chkready(struct iscsi_cls_session *session)
>  {
>  	int err;
> @@ -1785,9 +1792,13 @@ static int iscsi_user_scan_session(struct device *dev, void *data)
>  		if ((scan_data->channel == SCAN_WILD_CARD ||
>  		     scan_data->channel == 0) &&
>  		    (scan_data->id == SCAN_WILD_CARD ||
> -		     scan_data->id == id))
> +		     scan_data->id == id)) {
>  			scsi_scan_target(&session->dev, 0, id,
>  					 scan_data->lun, scan_data->rescan);
> +			spin_lock_irqsave(&session->lock, flags);
> +			session->target_state = ISCSI_SESSION_TARGET_SCANNED;
> +			spin_unlock_irqrestore(&session->lock, flags);
> +		}
>  	}
>  
>  user_scan_exit:
> @@ -1960,31 +1971,41 @@ static void __iscsi_unbind_session(struct work_struct *work)
>  	struct iscsi_cls_host *ihost = shost->shost_data;
>  	unsigned long flags;
>  	unsigned int target_id;
> +	bool remove_target = true;
>  
>  	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
>  
>  	/* Prevent new scans and make sure scanning is not in progress */
>  	mutex_lock(&ihost->mutex);
>  	spin_lock_irqsave(&session->lock, flags);
> -	if (session->target_id == ISCSI_MAX_TARGET) {
> +	if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
> +		remove_target = false;
> +	} else if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
>  		spin_unlock_irqrestore(&session->lock, flags);
>  		mutex_unlock(&ihost->mutex);
> -		goto unbind_session_exit;
> +		ISCSI_DBG_TRANS_SESSION(session,
> +			"Skipping target unbinding: Session is unbound/unbinding.\n");
> +		return;
>  	}
>  
> +	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
>  	target_id = session->target_id;
>  	session->target_id = ISCSI_MAX_TARGET;
>  	spin_unlock_irqrestore(&session->lock, flags);
>  	mutex_unlock(&ihost->mutex);
>  
> -	scsi_remove_target(&session->dev);
> +	if (remove_target)
> +		scsi_remove_target(&session->dev);
>  
>  	if (session->ida_used)
>  		ida_free(&iscsi_sess_ida, target_id);
>  
> -unbind_session_exit:
>  	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
>  	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
> +
> +	spin_lock_irqsave(&session->lock, flags);
> +	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
> +	spin_unlock_irqrestore(&session->lock, flags);
>  }
>  
>  static void __iscsi_destroy_session(struct work_struct *work)
> @@ -2061,6 +2082,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
>  		session->ida_used = true;
>  	} else
>  		session->target_id = target_id;
> +	spin_lock_irqsave(&session->lock, flags);
> +	session->target_state = ISCSI_SESSION_TARGET_ALLOCATED;
> +	spin_unlock_irqrestore(&session->lock, flags);
>  
>  	dev_set_name(&session->dev, "session%u", session->sid);
>  	err = device_add(&session->dev);
> @@ -4368,6 +4392,16 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
>  iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
>  iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
>  
> +static ssize_t
> +show_priv_session_target_state(struct device *dev, struct device_attribute *attr,
> +			char *buf)
> +{
> +	struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
> +	return sysfs_emit(buf, "%s\n",
> +			iscsi_session_target_state_name[session->target_state]);
> +}
> +static ISCSI_CLASS_ATTR(priv_sess, target_state, S_IRUGO,
> +			show_priv_session_target_state, NULL);
>  static ssize_t
>  show_priv_session_state(struct device *dev, struct device_attribute *attr,
>  			char *buf)
> @@ -4470,6 +4504,7 @@ static struct attribute *iscsi_session_attrs[] = {
>  	&dev_attr_sess_boot_target.attr,
>  	&dev_attr_priv_sess_recovery_tmo.attr,
>  	&dev_attr_priv_sess_state.attr,
> +	&dev_attr_priv_sess_target_state.attr,
>  	&dev_attr_priv_sess_creator.attr,
>  	&dev_attr_sess_chap_out_idx.attr,
>  	&dev_attr_sess_chap_in_idx.attr,
> @@ -4583,6 +4618,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
>  		return S_IRUGO | S_IWUSR;
>  	else if (attr == &dev_attr_priv_sess_state.attr)
>  		return S_IRUGO;
> +	else if (attr == &dev_attr_priv_sess_target_state.attr)
> +		return S_IRUGO;
>  	else if (attr == &dev_attr_priv_sess_creator.attr)
>  		return S_IRUGO;
>  	else if (attr == &dev_attr_priv_sess_target_id.attr)
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index cab52b0f11d0..34c03707fb6e 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -236,6 +236,14 @@ enum {
>  	ISCSI_SESSION_FREE,
>  };
>  
> +enum {
> +	ISCSI_SESSION_TARGET_UNBOUND,
> +	ISCSI_SESSION_TARGET_ALLOCATED,
> +	ISCSI_SESSION_TARGET_SCANNED,
> +	ISCSI_SESSION_TARGET_UNBINDING,
> +	ISCSI_SESSION_TARGET_MAX,
> +};
> +
>  #define ISCSI_MAX_TARGET -1
>  
>  struct iscsi_cls_session {
> @@ -264,6 +272,7 @@ struct iscsi_cls_session {
>  	 */
>  	pid_t creator;
>  	int state;
> +	int target_state;			/* session target bind state */
>  	int sid;				/* session id */
>  	void *dd_data;				/* LLD private data */
>  	struct device dev;	/* sysfs transport/container device */

ping...

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/105fcfc2-2518-cf61-c17c-9848b32da8fd%40huawei.com.
