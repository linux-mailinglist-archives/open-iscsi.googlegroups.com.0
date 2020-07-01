Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBG6X6L3QKGQE32NTO3I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C488210F36
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Jul 2020 17:28:29 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id s8sf412561pgs.9
        for <lists+open-iscsi@lfdr.de>; Wed, 01 Jul 2020 08:28:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593617307; cv=pass;
        d=google.com; s=arc-20160816;
        b=PiaLeNjDG1gw8i2Zv9RYRxq2WcBJICQ42C/3ItTSLQWB2SJ97R9cymj0x0/geADETV
         9o+htKI5R1tXW95xpgHpEdlzpm7Z3QO6IbrE2v8n7OYv49zyWbmeqaQBLWdegXUrtuKh
         jItUeYAvUtqYycyb2VXhJSMWqdhHNGa6O3R/yIUYa53HYLp8hAz3xPcTnvyoeJJWXEdF
         rK4oh9OYIf3Mx/rYtAPzhKzQCACRjz0gH20bPVaA3vcoaYVpsFub9k4U2k80MYGiDq4R
         3c5dWYMGqPe2zuwr4SB/Sux65RCAI+l+bK2DpC0OUdXhw27ccMLmdLSEumHPAKHW4qsn
         rdfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=0mVy+3lLAqVGF/Z/EEQ1qiFzC2VEPdXOCdfpdGmvzeY=;
        b=ofFZzO23ak73BvmtTfrmXit3av6hximYDB//2a+HVHpsOgGtqljwTf+rQ7PbWmeXzp
         6wyeViBYOvIY0LZbfGwVjxNwiVGxQN2uVE1gmzedslfQX4wgTvTkgFOGMW8zd0lZ21V7
         qwVUdeyDewcVmaU40aLwyFXMDgAB8GeBXuRSYgrBxiQ7SyqH4PpUM9Aj1oxbIm1GFK00
         mSzgT6vgPf+6U5e0csXu9CK5v1KHRCv9fJATolPuk0SQz5z2DeASekQCyTCihev9OV9x
         7ettsKz9UeK+A16dFVeyFUyxtf4d/Veo+i4h/18ur1VAAEiXf5MK2k0XiZuPJ0uEmbbG
         FGMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=RzyyBE2k;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0mVy+3lLAqVGF/Z/EEQ1qiFzC2VEPdXOCdfpdGmvzeY=;
        b=QJq14vMfK1LFvRmN3LKGpznV8PUJDZDRF4VrbCVTBikcW9pUskSAXAO/+iQmvpJzHK
         SwUiujA3xjXBAwVIksmvIHxF104Z2y6KPtSuBgUF6S9ZyCnzNGBPNq9hyuYiAYTvdhdi
         FkiNEq+1k37wCNDHF/BJ8udevnLaEniRhTZze2A5iRGCgT2L4JBoNT5Tz38f3BDj5fzr
         dZ68mNrUxuNZA4Cr6aAEkD3umSt1+gT0dOZX3m/4NTHCpWnETzv0RV9VJKzLKxFX9/dT
         gZGhA+5J+qOCOCoc8zK4/nbSns/fdeCQcOrjEFwoWuh3obW2FdJOJxO+DJn5wcduaah+
         TOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0mVy+3lLAqVGF/Z/EEQ1qiFzC2VEPdXOCdfpdGmvzeY=;
        b=fg8nDG1iqfrPf9Js3XJIhIb1bLLJe+LHhP37gp/Z/SySwu9kU3cJjtXxEIEoBm4XSG
         uIcsFvRfEkX1XI3q+6GmYOJ89xd2GxiZAEUsEl70QjfCAbKXPxg0N0iJQUNPA1DV8YIa
         znj7Y/67u9rejCJdPZ9NYLIVabS/Qc7Fdr5MImvrl8MZjIrGHnT11thclzKGFWduu1RJ
         a8E4xukiKpRf3DLaj0rKo+Xo1H2F6vYZRBzkIfWTYSAdSmvndw7s6+Ogzw4BkmAKvQ+c
         TPhGTR+oxW97tapQroWwnHD/CDfC3nkSYUNanzkB9Yo/aSnXQlxdS4yIY93MyVdf8la6
         NzSA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531VDmI35SJtiqKQz7QLWdgAAT2YZ6kCMS5A20SznRH3Pvx7ChoA
	iyc/H/9njEFsvnk4Opw0H2g=
X-Google-Smtp-Source: ABdhPJxqGtFE9JahwtOZgxWQwVDqO+4RTMXFJ9iU80vU2ELvX0ZOGLYrcKOH9a1bol4POvsUWjfOtg==
X-Received: by 2002:a17:90a:c28f:: with SMTP id f15mr14933668pjt.72.1593617307673;
        Wed, 01 Jul 2020 08:28:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls979605pgo.9.gmail; Wed, 01 Jul
 2020 08:28:27 -0700 (PDT)
X-Received: by 2002:aa7:946e:: with SMTP id t14mr10448591pfq.85.1593617307188;
        Wed, 01 Jul 2020 08:28:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593617307; cv=none;
        d=google.com; s=arc-20160816;
        b=JTQ2+P5+YxVxScUi8FFs/e7WROpKLZ0XEY3D9mUfdmAYek4L2CXFunoxqoOjcI+RaU
         A/RPkYL8QD0z9ssEfYA4IolZmx0FTpQl4GsjshwsLonvmrtFDAYH/eMHxsdH7T4PPDar
         U6FFAl6BXRdu6iyBR1U/mfNHpFve/fzxQt2uH/q2+hkawdbPsSpoUveqHSdABcKoV/gy
         TcGxXiDtXnewudVjIzvOAF8zU0yMv4eajPJysmYwhOqIjYNWgs0AXwCls5O8Hjf7Rohm
         E+7cLyaXWF4jnmMTWnD4B+tgABxjOplYbwGHgyKur95Zut32vLlegtEzEGNLJyvaVO0y
         k3Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=E9jY30hj+ZKGGRNx8bb4PuMEiQ00MFjpeLHWCV4VVyU=;
        b=sP3oZtPhohac+T2bwHO4guyeopyTKzveIYWuXWQqrVFUXKMegVaP7a14RYVQR66TQH
         eYhknAeP4A0JHvOtsNH0g0+7ynqPY1tkBwG9l6tSCALwd4TfdC5AnTq13mp25g+8KE0P
         8OfIeFiLODRzkVbcKOtqLkDZ1DS8UgyvIaS0TiBCWWr3GgXSoHJROkBAdW/euJk8D0Km
         E00GKwKD0l7TneYE2g7k10XKo2j736ZU7niiMRcQiYW2aaziX+EaN0EkmC7kZMqxaqZk
         LPrTrsCQheCEY/PA1Q5Kt9lmC9Xx23FOFtbDr/74dNQmGi9aamR/fJ4v5vTlUL3WI1lI
         3M6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=RzyyBE2k;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id 89si238681pla.5.2020.07.01.08.28.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 08:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 061FNRG5144729;
	Wed, 1 Jul 2020 15:28:26 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2130.oracle.com with ESMTP id 31ywrbse5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 01 Jul 2020 15:28:26 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 061FMknU066079;
	Wed, 1 Jul 2020 15:28:25 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 31xg16kjcp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 01 Jul 2020 15:28:25 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 061FSNt8003656;
	Wed, 1 Jul 2020 15:28:24 GMT
Received: from [20.15.0.2] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 01 Jul 2020 15:28:23 +0000
Subject: Re: [PATCH 1/2] scsi: iscsi: change back iscsi workqueue max_active
 argu to 1
To: Bob Liu <bob.liu@oracle.com>, linux-scsi@vger.kernel.org
Cc: martin.petersen@oracle.com, open-iscsi@googlegroups.com, lduncan@suse.com
References: <20200701030745.16897-1-bob.liu@oracle.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <8e09f77c-ac01-358b-0451-d4107ef5cd34@oracle.com>
Date: Wed, 1 Jul 2020 10:28:22 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200701030745.16897-1-bob.liu@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9669 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=2 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007010110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9669 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 mlxlogscore=999
 clxscore=1015 cotscore=-2147483648 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=2 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007010110
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=RzyyBE2k;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 6/30/20 10:07 PM, Bob Liu wrote:
> Commit 3ce4196 (scsi: iscsi: Register sysfs for iscsi workqueue) enables
> 'cpumask' support for iscsi workqueues.
> 
> While there is a mistake in that commit, it's unnecessary to set
> max_active = 2 since 'cpumask' can be modified when max_active = 1.
> 
> This patch change back max_active to 1 so as to keep the same behaviour as
> before.
> 
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>  drivers/scsi/libiscsi.c             | 2 +-
>  drivers/scsi/scsi_transport_iscsi.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index e5a64d4..49c8a18 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2629,7 +2629,7 @@ struct Scsi_Host *iscsi_host_alloc(struct scsi_host_template *sht,
>  			"iscsi_q_%d", shost->host_no);
>  		ihost->workq = alloc_workqueue("%s",
>  			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
> -			2, ihost->workq_name);
> +			1, ihost->workq_name);
>  		if (!ihost->workq)
>  			goto free_host;
>  	}
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index f4cc08e..7ae5024 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -4760,7 +4760,7 @@ static __init int iscsi_transport_init(void)
>  
>  	iscsi_eh_timer_workq = alloc_workqueue("%s",
>  			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
> -			2, "iscsi_eh");
> +			1, "iscsi_eh");
>  	if (!iscsi_eh_timer_workq) {
>  		err = -ENOMEM;
>  		goto release_nls;
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

I think it should get it into 5.8 to fix the bug I mentioned in the other thread.

For 5.9, you'll want to send another patch to update the iscsi_destroy_workq that got added in 5.8.

scsi_transport_iscsi.c:

iscsi_destroy_workq = create_singlethread_workqueue("iscsi_destroy");

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8e09f77c-ac01-358b-0451-d4107ef5cd34%40oracle.com.
