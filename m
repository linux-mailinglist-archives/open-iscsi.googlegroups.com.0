Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYXX4SJAMGQEW2S4K4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x37.google.com (mail-oa1-x37.google.com [IPv6:2001:4860:4864:20::37])
	by mail.lfdr.de (Postfix) with ESMTPS id 41769502768
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Apr 2022 11:33:25 +0200 (CEST)
Received: by mail-oa1-x37.google.com with SMTP id 586e51a60fabf-e2f30da92fsf3537803fac.16
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Apr 2022 02:33:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650015203; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hx1FX/xP0XD10W61CXdJiY67xm8mzIjnOg/iIknXTG1MZtr/t98P32Ucz3uKv/z77h
         oDPFw6dKGiPcKgeq2iFlGfxRXsplWJ/QaNpUPnKarzrsFTmwWUmXKf2OHkBba8oWyhLo
         Zhiq7C7UQyi9opvoaXapGCZSIhxGJffRj+kK8Cuew6ZwklTaWwP1iBPjSG2M9XtCOmzN
         iPXAawnbciSLj6YkN71Yfl3zcC7HoJlhvSYh/wXSl1jD8GLqTVurjMcNepjSzfosXSfu
         9DFmKyL/tiHH8GxOwPdkRWsPL/kT2dSpa8+LXW3IKHU6jhj49hw+M4lFVHtxe38UEMCu
         L72A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=SaUDEtKVA7h42kUR91bUpHfYl0CMquqcbQcnSe59fqM=;
        b=hjrXnYgcVbvG8+O1wcbJIln6XhG4Ub0qyDdroScK3tlRpvFNXwiqp8JdbilegD0Ydm
         xu35oiMgP9UfeZjtgTEMWXqbllIxgN0INVuYLU2qsJj2SOvGIpA3efOrh5x0rtdeasSF
         YGG1u8ik06t9yQkqvEopL70NmDOpX6KsZ9XeVll3OeJUcwVSFZ6MT5kUTauNVsN0ecVW
         uB9iYsyFEEYfeIVeSbm6S9vUx9s1R3UqUxMY1eYo2KPu1RZNLp3g+rVqlqsI3HoDGIQ6
         urr41FFCmNLsLHyO3CJs4cxaI1zx8oKRRSNPvs9W8LXH0y0lliinX9QbiX8G+gXnJmGt
         rUtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SaUDEtKVA7h42kUR91bUpHfYl0CMquqcbQcnSe59fqM=;
        b=i1M+M+SUUbvfkdsjQAZmbaA/pe/VCBcZNST/sEDd8sdQ+Vsejvizac6SxLpgpkFORJ
         JV6vVuAT2rPnIlncFwE5J7KyZb1e2u8jgYrPtAndvEDK5rFzmLPTFlLXj8Hm4L8ih88q
         gJCePP+Wp7cNSli4GnEWu1lAKARxa+3JZ1mFTI1pJoQx+bnsa2EuK41TX3enD/MaBXKZ
         dROVDTFBAOTosTnor1dxFDrsmaydwvKc//xfFphiQiH41yuBOLSriDQj1mkbDVtksCFI
         gotmnaUxMijVJ19Pfd5oXO1ExYuSjAqN0XaDaLG9z6u6pMpIZqiIZAAYWtY2QMnotAgM
         l+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SaUDEtKVA7h42kUR91bUpHfYl0CMquqcbQcnSe59fqM=;
        b=WqE/qrYvJYkZYvAyiM2CaHbvApwe3B5Sig2UvPSecul2AXApEcsx23LxgrPDNu0BSG
         4+azsXPb5W/iAVrm9uOLS2nSvqMSh1pQcKuauXQOB2gOo3u16nxtHrGmqFvhX440yF89
         MATRS9uPRNep533MPlTXfu2BpFpj+Va8Jr0ony3sX5h0CRvq6GP5bGMC69G0ETXtFHvp
         PFU6iWJJE9x3hRUm+wAlGQrLZ1pmnB7Yi28W03i3bxjMNrtG0jjGPuhJP6yIECJhxyMC
         QT9J+dmhT4MsuoVSTf27KO/3kJZy8qShWeO9JNZNEB4DZHMQ05adaxCOG4sUF0xTKODN
         BvGw==
X-Gm-Message-State: AOAM532j67Lu9S/+xim6FGEJ2vvQncozq6PbPufKsTi7sUmbLtsy070m
	k7wHbfEbyMXCupIpkYKc0Kg=
X-Google-Smtp-Source: ABdhPJzlQRq0HI/Ylzo9zFprrIZldTTO5PSqcUjErwAf3nSJTHoRnPAyA8gcnj7R1hK4uC3/4Nm7Qw==
X-Received: by 2002:a4a:611e:0:b0:333:3002:9d1f with SMTP id n30-20020a4a611e000000b0033330029d1fmr2006022ooc.10.1650015203688;
        Fri, 15 Apr 2022 02:33:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:1894:b0:2da:88f7:2593 with SMTP id
 bi20-20020a056808189400b002da88f72593ls4367076oib.11.gmail; Fri, 15 Apr 2022
 02:33:22 -0700 (PDT)
X-Received: by 2002:a54:4111:0:b0:322:4ef6:f3fe with SMTP id l17-20020a544111000000b003224ef6f3femr98670oic.97.1650015202290;
        Fri, 15 Apr 2022 02:33:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650015202; cv=none;
        d=google.com; s=arc-20160816;
        b=dnZUeg7YJvM8aWW/3L5SQIZBhKolKQoM5pJDE/65R3nFW0AkVcrBkVGLLz9e02oluR
         szTy9aKkMcQaDac3sWcMYEsnx7HYtUWAG+53FpA9U3xEWkTuIqeoGsoMiQFLWS4Hussy
         oK0slqETIjeV8EWoGrcQXY9MseAsbFn031ihuxShyjYaaBDU/xpD/Yb+kypO78gFQDrh
         mTlcxdBbMSL7nR0u1GOpoPlZnwit83f3Kc1QBmmslmxU/yklIgOwFNuPN42AIICcG39q
         pVz2Qa/m/G20ZMo9R9nY7WptlENh9VdmuED+84cH9liys2cXf2Vr86yWuUtszkFGIQke
         S0ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=kO0IPSg+2223a8Jkl3R/N9+5nIYm/M7IFXsRk6y5Kwc=;
        b=JkcTtfulWN8LrhjTYm+0guTcEe+DY5ihhUZ/iHgBU2GrbPeRZ4URrAuhstlFW0BhO2
         BZ4M+WbCqzEzi2z0woFYNNpk7p4EPbg/1cQQ+CDUrvj/QtNBpdCO7ZDyZZrKyp1FaS9y
         tRtQ4j9eMlPx7g0d1M4V9Lkr1s56kA0nd0mo/RDUhpUXlqkkqjBfkrlDfqIGY3t8dz2T
         VafQf5y5wxgOHgFXw2u9zt8uVMe+h1e6uFBRUVI9GEeeHckdvb+2NxSL01t39FQbsCEc
         dxW+Ti+RMN8xFhC48qrI9z6FMXz5aZ4rBtZRRNbfqsw7Ng+RIGGaR58P8B7+MHIUu+T6
         pFDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id q16-20020a05683033d000b005c43e14b02bsi97592ott.3.2022.04.15.02.33.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Apr 2022 02:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Kfrfj0HbPzFprm;
	Fri, 15 Apr 2022 17:30:53 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 15 Apr 2022 17:33:19 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 15 Apr 2022 17:33:19 +0800
Message-ID: <1e4b47e5-2bd3-2766-7d47-d14d3a4fbd65@huawei.com>
Date: Fri, 15 Apr 2022 17:33:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 1/2] scsi: iscsi: introduce session UNBOUND state to avoid
 multiple unbind event
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Wenchao Hao
	<haowenchao@huawei.com>
CC: <linfeilong@huawei.com>
References: <20220414014947.4168447-1-haowenchao@huawei.com>
 <20220414014947.4168447-2-haowenchao@huawei.com>
 <137ec5f5-dbdc-99f0-e9b7-deeef5001a01@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <137ec5f5-dbdc-99f0-e9b7-deeef5001a01@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
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

On 2022/4/14 23:22, Mike Christie wrote:
> On 4/13/22 8:49 PM, Wenchao Hao wrote:
>> Fix the issue of kernel send multiple ISCSI_KEVENT_UNBIND_SESSION event.
>> If session is in UNBOUND state, do not perform unbind operations anymore,
>> else unbind session and set session to UNBOUND state.
>>
> 
> I don't think we want this to be a state because you can have a session
> with no target or it could be partially deleted and it could be in the
> logged in or failed state. If scsi-ml is sending SYNC_CACHEs as part of
> the target/device removal operation, and we lose the session then we could
> go through recovery and the state will go from failed to logged in, and
> your new unbound state will have been overwritten.
> 
> I think it might be better to have a new sysfs file, target_state, for
> this where you could have values like scanning, bound, unbinding, and
> unbound, or just a sysfs file, target_bound, that is bool.
> 

Thanks for your review, I would modify and send another patch.

>> Reference:https://github.com/open-iscsi/open-iscsi/issues/338
>>
> 
> You should add a description of the problem in the commit, because that
> link might be gone one day.
> 
> 
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> ---
>>  drivers/scsi/scsi_transport_iscsi.c | 19 +++++++++++++++++--
>>  include/scsi/scsi_transport_iscsi.h |  1 +
>>  2 files changed, 18 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index 27951ea05dd4..97a9fee02efa 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -1656,6 +1656,7 @@ static struct {
>>  	{ ISCSI_SESSION_LOGGED_IN,	"LOGGED_IN" },
>>  	{ ISCSI_SESSION_FAILED,		"FAILED" },
>>  	{ ISCSI_SESSION_FREE,		"FREE" },
>> +	{ ISCSI_SESSION_UNBOUND,	"UNBOUND" },
>>  };
>>  
>>  static const char *iscsi_session_state_name(int state)
>> @@ -1686,6 +1687,9 @@ int iscsi_session_chkready(struct iscsi_cls_session *session)
>>  	case ISCSI_SESSION_FREE:
>>  		err = DID_TRANSPORT_FAILFAST << 16;
>>  		break;
>> +	case ISCSI_SESSION_UNBOUND:
>> +		err = DID_NO_CONNECT << 16;
>> +		break;
>>  	default:
>>  		err = DID_NO_CONNECT << 16;
>>  		break;
>> @@ -1838,7 +1842,8 @@ int iscsi_block_scsi_eh(struct scsi_cmnd *cmd)
>>  
>>  	spin_lock_irqsave(&session->lock, flags);
>>  	while (session->state != ISCSI_SESSION_LOGGED_IN) {
>> -		if (session->state == ISCSI_SESSION_FREE) {
>> +		if ((session->state == ISCSI_SESSION_FREE) ||
>> +		    (session->state == ISCSI_SESSION_UNBOUND)) {
>>  			ret = FAST_IO_FAIL;
>>  			break;
>>  		}
>> @@ -1869,6 +1874,7 @@ static void session_recovery_timedout(struct work_struct *work)
>>  		break;
>>  	case ISCSI_SESSION_LOGGED_IN:
>>  	case ISCSI_SESSION_FREE:
>> +	case ISCSI_SESSION_UNBOUND:
>>  		/* we raced with the unblock's flush */
>>  		spin_unlock_irqrestore(&session->lock, flags);
>>  		return;
>> @@ -1957,6 +1963,14 @@ static void __iscsi_unbind_session(struct work_struct *work)
>>  	unsigned long flags;
>>  	unsigned int target_id;
>>  
>> +	spin_lock_irqsave(&session->lock, flags);
>> +	if (session->state == ISCSI_SESSION_UNBOUND) {
>> +		spin_unlock_irqrestore(&session->lock, flags);
>> +		return;
>> +	}
>> +	session->state = ISCSI_SESSION_UNBOUND;
>> +	spin_unlock_irqrestore(&session->lock, flags);
>> +
>>  	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
>>  
>>  	/* Prevent new scans and make sure scanning is not in progress */
>> @@ -4329,7 +4343,8 @@ store_priv_session_##field(struct device *dev,				\
>>  	struct iscsi_cls_session *session =				\
>>  		iscsi_dev_to_session(dev->parent);			\
>>  	if ((session->state == ISCSI_SESSION_FREE) ||			\
>> -	    (session->state == ISCSI_SESSION_FAILED))			\
>> +	    (session->state == ISCSI_SESSION_FAILED) ||			\
>> +	    (session->state == ISCSI_SESSION_UNBOUND))			\
>>  		return -EBUSY;						\
>>  	if (strncmp(buf, "off", 3) == 0) {				\
>>  		session->field = -1;					\
>> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
>> index 38e4a67f5922..80149643cbcd 100644
>> --- a/include/scsi/scsi_transport_iscsi.h
>> +++ b/include/scsi/scsi_transport_iscsi.h
>> @@ -232,6 +232,7 @@ enum {
>>  	ISCSI_SESSION_LOGGED_IN,
>>  	ISCSI_SESSION_FAILED,
>>  	ISCSI_SESSION_FREE,
>> +	ISCSI_SESSION_UNBOUND,
>>  };
>>  
>>  #define ISCSI_MAX_TARGET -1
> 
> .

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1e4b47e5-2bd3-2766-7d47-d14d3a4fbd65%40huawei.com.
