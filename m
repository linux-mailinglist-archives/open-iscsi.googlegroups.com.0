Return-Path: <open-iscsi+bncBDO7B5X3UIBBBQ5YZKOAMGQEL2JM6UQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB62647C36
	for <lists+open-iscsi@lfdr.de>; Fri,  9 Dec 2022 03:24:07 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id m9-20020a63ed49000000b00477f449365fsf2184627pgk.15
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Dec 2022 18:24:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670552645; cv=pass;
        d=google.com; s=arc-20160816;
        b=wezhplHcYfYazkk7yQb3q3TfkqVj28RflQiOm205y13rZUpn7NyBv+8GqxDc85df66
         kTufbdK1ZmagvHv8jjrBhpiglbzd9QKVHBZ4UJNkKH4vJc4rav4aYUKyHQKTIjUbbwr3
         XQlwk85OmhyskzpO2pdbNwyKavQTpdo9eiwG4Vr5lKt2HMgETTgjaKcsIaw9l/Z6RnHr
         XbKwtR0xyHTmaGo05MT6imNqRb0z3sGb5P8V7N7OBYspFZT6wvCS1hCfcAnoLIRdISLG
         tysziJVPtymI+WtV0dNvTZVNjtOrcEB8hmHspEWwImsGoIWq6DiZrO4AvRj6BroQnfgl
         tnwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=6dcn7/U6LTGp81K0IGxxAvUNXR+8EQb7UF2gM8I5s6A=;
        b=ATnTAgFb+QuHx3tTEUC/4gvEP+1wYouB+X5revtd6zv15RbtR0iKvlAmGh5Zf/SHCU
         hqlrRrzrJ6Kb8yJOK4FmiaygN6LbweUl5UERR+zQKSlaecewjLIIV7lZG8WI9qoUX8q4
         JIlNtqLPCXkL9zX7VjZL0+t3Z4KZcmRG3ymmGK4OFeWKsl9szyoW2s3gqUdwobER4h4x
         BQFBkfcG3TeBkHHpqmnXmRDQQaplz0YKlLNDzklICweErPaPZ1pM00k3zZGfz2qMLKHW
         1LPGbeqQ0HZgv9o4Z2PyTDOh7OW0I+QUawLh9OXe1bIKy9ubrE+d9eMxckAyv+TJb/cH
         9WBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6dcn7/U6LTGp81K0IGxxAvUNXR+8EQb7UF2gM8I5s6A=;
        b=cS1gMBZkIQAzB76MBvjEGgu5bwgeB5+Qxfz++kNf+pKUK9UdfO/zymv46bGalKHn/T
         VnQI6pVQSjKBXkMx0kuFwT7/Wtb6hRPhncNTu+MNDLWr1ZMGoHQTIjHe9+j3XWrHuiql
         90K8oQkV7NPJBFz3M3ACmMeaisNL07YWthOv90AESvQmZKgRnRKC7ubfRTG5q+nsJ9u2
         YiexKmhX96ancyA+qLrHR/sa0dq8NDeewDI4PpH5GTbbBFRS2WzVwlpAjX+rfCHK1AmK
         qqWjtV0uc5vw4ll8aStlWyoPdVipg1ZTaDN104kuSm7hmoIHgEzNJoC5R516S/41IikO
         orhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6dcn7/U6LTGp81K0IGxxAvUNXR+8EQb7UF2gM8I5s6A=;
        b=AZo9sU5sceNKMsjY9fls3ZORpM+5D8cDNqCnPLOeu1HDiDjN1TP+Ur4iYnNhyJPKeG
         kKnyG6b4uc3odC8FJRcT7Bp0Ctd3/NlLV7cHIur1pOlnhxs/UT868BfsK/35sCzZOhFB
         z2/YPmGmw2tb3yuV2OetGzPPUgon8lXhvAk47+VsDvZZLlP8Ts/oslGkkBtT01b1vEej
         BBGNxhABwuOoLMXBF7OSuvuRi1Rqe2jecBRByrg++xpKMItqFFA+kJ1LuEzzvJSxVzHT
         mgvJHCjdEZkQLIuBwGsJOKQkUITkkEKdmZ0pPOCbXHwKagyZ6HcyRiAzb1HQ0tj/lrdU
         sUHw==
X-Gm-Message-State: ANoB5pn2C3lS2QAtJJLDbZGYaoPFWY+OEZpxk0BoLxdGTOFIsJ+j2l3w
	nehrBfJwwkAqGroHfMmgkq4=
X-Google-Smtp-Source: AA0mqf6pmf4zhixE2rWM+t4syubM98dLjRM1W5axfZxpaXoXyI9CSeigSht0mkL6lKz6KALA4dnlRg==
X-Received: by 2002:a62:6d46:0:b0:563:54fd:3638 with SMTP id i67-20020a626d46000000b0056354fd3638mr98654967pfc.44.1670552645581;
        Thu, 08 Dec 2022 18:24:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:c454:b0:178:35a3:84d9 with SMTP id
 m20-20020a170902c45400b0017835a384d9ls6732029plm.10.-pod-prod-gmail; Thu, 08
 Dec 2022 18:24:03 -0800 (PST)
X-Received: by 2002:a05:6a20:9e46:b0:a3:7d1d:75f3 with SMTP id mt6-20020a056a209e4600b000a37d1d75f3mr4798786pzb.52.1670552643266;
        Thu, 08 Dec 2022 18:24:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670552643; cv=none;
        d=google.com; s=arc-20160816;
        b=cBr6JmIl7fOVDMo5eLU7zhd83xjwbWuXLHXWnFVOENkt99xM44Iw0Xx8sPos8bd/Cc
         XH/7kRdZ3rrjBezfhT+lEra9Hy7JcH/pAVYFlp16QKN+GrJ9wzLwHUsXUiJHzX/Y7a6o
         v7n+Ih2UEpmTXPF2n0aoUCA2rJmaAM/4xRu52kPnc5hjfbwY687VFMrIqV7aWXnmtusg
         inEQL9KoSELfo6SgRJDugOHHw/F9P3h4gZ3fS20XYqzzfdnKgsngOopQ5qjeOuOMaNrz
         krPNuZpGlh8/BOT+zVjobN2uP6mzhzn+a0VSah/T0wJ6aYw7i/EW/G/OkbQ4t6YOkhzI
         835g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=l5OuiADr/pT4RaimJjQDHHJQ8HH2jVHKusIoXK1fdmc=;
        b=RYXooVGAMBTWqzzzCP6NagO76VK+GnP0p9t/TDS4trUFJyB/oMbLpvEOZMU6YYVF+x
         NWVxpo42nqev59puRpmu8b0Shd1Ow6rT+bhgShHhlaP2kisb4129ztAYezb1XB6Irutz
         4jPenqndhBCZp0eWJys8eJ+QwyqD0MomFj5AwwXTf7MZiVdRp3MXgptM1a7JGZuSm9b3
         W3HIVWCSxMu1CAW2Q8fPq/YH3UQuXZJWZrbYusDzzJnJfWxm+vJDonJe4kKk8uusweuz
         p1ndI+6UAYlsQh3k8tae+q688p7JoxEVc4WOqSG1DuNQifBpAxc1JUMY/BH7/Y874ZH8
         xtWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id t26-20020a63b25a000000b00477cb48f28csi13328pgo.3.2022.12.08.18.24.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Dec 2022 18:24:03 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpeml500019.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NSvqS6v9RzqT16;
	Fri,  9 Dec 2022 10:19:48 +0800 (CST)
Received: from [10.174.179.189] (10.174.179.189) by
 dggpeml500019.china.huawei.com (7.185.36.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Dec 2022 10:24:00 +0800
Message-ID: <806990ed-0e78-a717-db45-370a71bb23c2@huawei.com>
Date: Fri, 9 Dec 2022 10:23:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v7] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>, Chris
 Leech <cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20221126010752.231917-1-haowenchao@huawei.com>
From: "'Wu Bo' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20221126010752.231917-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.174.179.189]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500019.china.huawei.com (7.185.36.137)
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wu Bo <wubo40@huawei.com>
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
>    target_id == ISCSI_MAX_TARGET since it can be handled by target_state
> 
> V6:
> - Set target state to ALLOCATED in iscsi_add_session
> - Rename state BOUND to SCANNED
> - Make iscsi_session_target_state_name() more efficient
> 
> V5:
> - Add ISCSI_SESSION_TARGET_ALLOCATED to indicate the session's
>    target has been allocated but not scanned yet. We should
>    sync this session and scan this session when iscsid restarted.
> 
> V4:
> - Move debug print out of spinlock critical section
> 
> V3:
> - Make target bind state to a state kind rather than a bool.
> 
> V2:
> - Using target_unbound rather than state to indicate session has been
>    unbound
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 47 ++++++++++++++++++++++++++---
>   include/scsi/scsi_transport_iscsi.h |  9 ++++++
>   2 files changed, 51 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index cd3db9684e52..812578c20fe5 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -1676,6 +1676,13 @@ static const char *iscsi_session_state_name(int state)
>   	return name;
>   }
>   
> +static char *iscsi_session_target_state_name[] = {
> +	[ISCSI_SESSION_TARGET_UNBOUND]   = "UNBOUND",
> +	[ISCSI_SESSION_TARGET_ALLOCATED] = "ALLOCATED",
> +	[ISCSI_SESSION_TARGET_SCANNED]   = "SCANNED",
> +	[ISCSI_SESSION_TARGET_UNBINDING] = "UNBINDING",
> +};
> +
>   int iscsi_session_chkready(struct iscsi_cls_session *session)
>   {
>   	int err;
> @@ -1785,9 +1792,13 @@ static int iscsi_user_scan_session(struct device *dev, void *data)
>   		if ((scan_data->channel == SCAN_WILD_CARD ||
>   		     scan_data->channel == 0) &&
>   		    (scan_data->id == SCAN_WILD_CARD ||
> -		     scan_data->id == id))
> +		     scan_data->id == id)) {
>   			scsi_scan_target(&session->dev, 0, id,
>   					 scan_data->lun, scan_data->rescan);
> +			spin_lock_irqsave(&session->lock, flags);
> +			session->target_state = ISCSI_SESSION_TARGET_SCANNED;
> +			spin_unlock_irqrestore(&session->lock, flags);
> +		}
>   	}
>   
>   user_scan_exit:
> @@ -1960,31 +1971,41 @@ static void __iscsi_unbind_session(struct work_struct *work)
>   	struct iscsi_cls_host *ihost = shost->shost_data;
>   	unsigned long flags;
>   	unsigned int target_id;
> +	bool remove_target = true;
>   
>   	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
>   
>   	/* Prevent new scans and make sure scanning is not in progress */
>   	mutex_lock(&ihost->mutex);
>   	spin_lock_irqsave(&session->lock, flags);
> -	if (session->target_id == ISCSI_MAX_TARGET) {
> +	if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
> +		remove_target = false;
> +	} else if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
>   		spin_unlock_irqrestore(&session->lock, flags);
>   		mutex_unlock(&ihost->mutex);
> -		goto unbind_session_exit;
> +		ISCSI_DBG_TRANS_SESSION(session,
> +			"Skipping target unbinding: Session is unbound/unbinding.\n");
> +		return;
>   	}
>   
> +	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
>   	target_id = session->target_id;
>   	session->target_id = ISCSI_MAX_TARGET;
>   	spin_unlock_irqrestore(&session->lock, flags);
>   	mutex_unlock(&ihost->mutex);
>   
> -	scsi_remove_target(&session->dev);
> +	if (remove_target)
> +		scsi_remove_target(&session->dev);
>   
>   	if (session->ida_used)
>   		ida_free(&iscsi_sess_ida, target_id);
>   
> -unbind_session_exit:
>   	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
>   	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
> +
> +	spin_lock_irqsave(&session->lock, flags);
> +	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
> +	spin_unlock_irqrestore(&session->lock, flags);
>   }
>   
>   static void __iscsi_destroy_session(struct work_struct *work)
> @@ -2061,6 +2082,9 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
>   		session->ida_used = true;
>   	} else
>   		session->target_id = target_id;
> +	spin_lock_irqsave(&session->lock, flags);
> +	session->target_state = ISCSI_SESSION_TARGET_ALLOCATED;
> +	spin_unlock_irqrestore(&session->lock, flags);
>   
>   	dev_set_name(&session->dev, "session%u", session->sid);
>   	err = device_add(&session->dev);
> @@ -4368,6 +4392,16 @@ iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
>   iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
>   iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
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
>   static ssize_t
>   show_priv_session_state(struct device *dev, struct device_attribute *attr,
>   			char *buf)
> @@ -4470,6 +4504,7 @@ static struct attribute *iscsi_session_attrs[] = {
>   	&dev_attr_sess_boot_target.attr,
>   	&dev_attr_priv_sess_recovery_tmo.attr,
>   	&dev_attr_priv_sess_state.attr,
> +	&dev_attr_priv_sess_target_state.attr,
>   	&dev_attr_priv_sess_creator.attr,
>   	&dev_attr_sess_chap_out_idx.attr,
>   	&dev_attr_sess_chap_in_idx.attr,
> @@ -4583,6 +4618,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
>   		return S_IRUGO | S_IWUSR;
>   	else if (attr == &dev_attr_priv_sess_state.attr)
>   		return S_IRUGO;
> +	else if (attr == &dev_attr_priv_sess_target_state.attr)
> +		return S_IRUGO;
>   	else if (attr == &dev_attr_priv_sess_creator.attr)
>   		return S_IRUGO;
>   	else if (attr == &dev_attr_priv_sess_target_id.attr)
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index cab52b0f11d0..34c03707fb6e 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -236,6 +236,14 @@ enum {
>   	ISCSI_SESSION_FREE,
>   };
>   
> +enum {
> +	ISCSI_SESSION_TARGET_UNBOUND,
> +	ISCSI_SESSION_TARGET_ALLOCATED,
> +	ISCSI_SESSION_TARGET_SCANNED,
> +	ISCSI_SESSION_TARGET_UNBINDING,
> +	ISCSI_SESSION_TARGET_MAX,
> +};
> +
>   #define ISCSI_MAX_TARGET -1
>   
>   struct iscsi_cls_session {
> @@ -264,6 +272,7 @@ struct iscsi_cls_session {
>   	 */
>   	pid_t creator;
>   	int state;
> +	int target_state;			/* session target bind state */
>   	int sid;				/* session id */
>   	void *dd_data;				/* LLD private data */
>   	struct device dev;	/* sysfs transport/container device */

Reviewed-by: Wu Bo <wubo40@huawei.com>

-- 
Wu Bo

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/806990ed-0e78-a717-db45-370a71bb23c2%40huawei.com.
