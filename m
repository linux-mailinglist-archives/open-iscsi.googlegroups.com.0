Return-Path: <open-iscsi+bncBCVPTQVVPQIIRGVO6YCRUBDEQN32M@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D51D51E09E8
	for <lists+open-iscsi@lfdr.de>; Mon, 25 May 2020 11:16:58 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id k15sf13715437pgt.21
        for <lists+open-iscsi@lfdr.de>; Mon, 25 May 2020 02:16:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590398217; cv=pass;
        d=google.com; s=arc-20160816;
        b=LImKFtyQUBuJ2syAIow/OB/5FAMcPK7/HnxTMhrvicrLaEulSLEq4ibqUoYc/qqyoy
         H3EQLCrbgz8bUn1zEfZsv0w0UFxYacc+9GIxdwFkMEkeLJaJVV8y+YGV4HrIQVc3wzxE
         k1R5D2Fmdo/yHXgabhL62LxrcX92/Lbkfqd7ZhX6odoy73bl4InvJwRav7bNEcgUswPt
         WToeiFRXS4nRbqkkk/lyY1AEz3rPT0t1QM/eCLkzHG9pNb5UWcYUgVHtgBVIDQjOAFI7
         5bUYERHgHU5eYD81xjU+KuJiiXXARZIBNetoUwqF6ko19cOzBvOqY9avo+TWuZ3A53KO
         iCMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=0QeJV7xjKrsbTgcNN90v2sqyXDSuSJXHQjgPPqHd9fw=;
        b=Hy8OFwwMsBCpxsP+m7J4ZfGwB/2EaQYdLnwh3VwYQTsBnuSPhM7u9shG0WaJEC3tNN
         lLYs9H7ajyUJisVQwdWPivOwt3kMpJtNkXfjrv6xckeSRn85noQ/xA2wC2lkL2zpnyNa
         MqbyFKbMlZsbJjVKYisBc1ZlcHcM76Iy4VP61FjULVmOs0dR/obt+MaddRlQRnvypfST
         ErFWztM1wWIdt4bmKHqz95Y0b1zf5HxBR0TFGpS1anNgY/WearsS9vcfBYHvkaxsHPei
         +pWN7QnbpskXDKM+GIVESyzdCpPBVDMQE17w+maJU9FhAB5rxWQxisNTVC10QbI5x5KU
         rcDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=AQr6GXQ+;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0QeJV7xjKrsbTgcNN90v2sqyXDSuSJXHQjgPPqHd9fw=;
        b=rQI9JzMxSmS/0uGToD9o5F5qwJ1DDDiEI0Un6VWp3IE3PVq4Txb5yWUuwhG5DTyvxO
         AgoLedH9tJlefiaZ3I4qVJx2ZR9iu7U0ApkE20xZPTWWgla4lbfolq8dJsiKKOSPF0Kp
         gRMiTWmjDrF7SYOy2PqQwyXFXnwPkcY/3CCOO5heby3VUYL7HMBAjjU+Ch9HChys5ZxM
         rqH4/Cj4UPEorD9cP+JiPUXBrN45NeXaWGLiPIoONeypWqaMKdZrgiw0GI5RL36KrpWd
         S/7+o0luAqcilwkX62gqdI31HZwnScg2eZPVaPX30vaEam9TGmt5a0bOri2SDKb5O8VI
         +UCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0QeJV7xjKrsbTgcNN90v2sqyXDSuSJXHQjgPPqHd9fw=;
        b=j5SKHQZeIMWf4f9adpWJB1/56GoaBl7/OStT3AwVp7lAkVrskqa9/ew+bJhteY9sDR
         FTMrn3jYFE4eikSzVRu7/Gm69dJzX/VGi0YsYRep0F7sEx18v9hvuWy0i3o6uq+qvqPy
         nyqzX7X+6Igdzu/wX8HKbmiMDGcqs2PE0KvvOCyfLrsTWMZVmJLthDlRElVYVU4AmdcE
         uH3GyGNqc7qJHcOsA0yE2gXWFpV9rHrNGiPy2SakYZLOXJNJHkEEft/QUFA3RQAjc/m0
         AsPB2EooYWz3k528KXA6skhLWcyc4pYml0onKtErNtycKUKlRFqJbDexLaof9PGEHyra
         I6kQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530irL3QGICfLDS+QGKmPUfHCY1vP28/WPnUKWJyLKGhbyFxaMnA
	FYovSviWLqOVcpzR6NTTSu4=
X-Google-Smtp-Source: ABdhPJyDBaZgS9RRZNhryCxfIA52M/sgV9VZpuPSYCn9ZocRGi07F6se8laALnG8eam2MbtXZTHt3A==
X-Received: by 2002:a17:902:b718:: with SMTP id d24mr12585343pls.185.1590398217024;
        Mon, 25 May 2020 02:16:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:4f04:: with SMTP id p4ls4414078pjh.3.canary-gmail;
 Mon, 25 May 2020 02:16:56 -0700 (PDT)
X-Received: by 2002:a17:90b:257:: with SMTP id fz23mr20420259pjb.138.1590398216623;
        Mon, 25 May 2020 02:16:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590398216; cv=none;
        d=google.com; s=arc-20160816;
        b=M5y5LRy4IsVfLUqdvSRmrrrPMGrP6vcKH6sU2KZuZx6heAith2hG4QbnptW7hhqve6
         ZIjeF2qFOVbq8F+bRGjAns3ksAkVEvlwSTW5xhk8e+UqwBJ0XkYPnCkhHVQol9OgcDlw
         ApPIIPmChGu6pHxSQo4kuAppGxox57D67TdWnHdcDHeAhvAofc2L5yiSrwItpsBAI85A
         3FPUJvmYGl+cDX9P4spd0v4k9ESlt/k3TN6w1EATENRtP8vdpRR6p/3z1xg21l4eQGrI
         Kx/tiCymK+XTXpcLU7WJ+3v5NWNLCF9/KSjJzE27myLHW6QEGjQGZd+vLKq/T9YOTyYW
         h3Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=LrFFU8xWTW6Jl27HLwBujrKz4CDFXZpLWD6Ja/5wY6s=;
        b=OH152sXhptxaBA7zFKrvfyuCCJsL5Jm6G1Xhd4P6ABUxWyrvJHi/8QQ3N73IWacY3Q
         T1jesp/V1DcgBclwdkggP0as7tltCimn9EmsxPX4nNCt5JLYTnoJSGTMyjme3TOl2IhV
         NncMK5brW5/dEdz/cEV8ktXzuOGJE5uZiIv2HG9yqhhdvpnKuHkq9cTJFM7rnLKjYP7E
         mTrmrC1rqjKDlT4wL7wUuPxdwC8iFWSgduhjzoxr3uTb1YLIi1DUrKBP453KpG4ce6Pl
         H9I+NOGf9k+5F/kZ8+UgQnKIoZA1M3xNI3XOGIveMyYOzs5Gb+uZGPSIZSwEEPpNQ9C8
         T8JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=AQr6GXQ+;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id b8si1767057pjk.2.2020.05.25.02.16.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 May 2020 02:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04P9C2rr179658;
	Mon, 25 May 2020 09:16:55 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 316uskmv02-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 25 May 2020 09:16:55 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04P98uF5015243;
	Mon, 25 May 2020 09:16:55 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 317ddky9by-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 25 May 2020 09:16:55 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04P9GrjH018847;
	Mon, 25 May 2020 09:16:54 GMT
Received: from [192.168.0.110] (/183.246.146.125)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 25 May 2020 02:16:52 -0700
Subject: Re: [RFC RESEND PATCH v2] scsi: iscsi: register sysfs for iscsi
 workqueue
To: open-iscsi@googlegroups.com
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
        martin.petersen@oracle.com, linux-scsi@vger.kernel.org
References: <20200505011908.15538-1-bob.liu@oracle.com>
From: Bob Liu <bob.liu@oracle.com>
Message-ID: <8d830a89-c554-7de9-a33a-987d117e99fb@oracle.com>
Date: Mon, 25 May 2020 17:16:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200505011908.15538-1-bob.liu@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9631 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 suspectscore=3 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005250073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9631 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 lowpriorityscore=0
 suspectscore=3 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 bulkscore=0 mlxlogscore=999 phishscore=0
 cotscore=-2147483648 adultscore=0 mlxscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005250073
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=AQr6GXQ+;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
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

friendly ping.

On 5/5/20 9:19 AM, Bob Liu wrote:
> Motivation:
> This patch enable setting cpu affinity through "cpumask" for iscsi workqueues
> (iscsi_q_xx and iscsi_eh), so as to get performance isolation.
> 
> The max number of active worker was changed form 1 to 2, because "cpumask" of
> ordered workqueue isn't allowed to change.
> 
> Notes:
> - Having 2 workers break the current ordering guarantees, please let me know
>   if anyone depends on this.
> 
> - __WQ_LEGACY have to be left because of
> 23d11a5(workqueue: skip flush dependency checks for legacy workqueues)
> 
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>  drivers/scsi/libiscsi.c             | 4 +++-
>  drivers/scsi/scsi_transport_iscsi.c | 4 +++-
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 70b99c0..adf9bb4 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2627,7 +2627,9 @@ struct Scsi_Host *iscsi_host_alloc(struct scsi_host_template *sht,
>  	if (xmit_can_sleep) {
>  		snprintf(ihost->workq_name, sizeof(ihost->workq_name),
>  			"iscsi_q_%d", shost->host_no);
> -		ihost->workq = create_singlethread_workqueue(ihost->workq_name);
> +		ihost->workq = alloc_workqueue("%s",
> +			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
> +			2, ihost->workq_name);
>  		if (!ihost->workq)
>  			goto free_host;
>  	}
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index dfc726f..bdbc4a2 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -4602,7 +4602,9 @@ static __init int iscsi_transport_init(void)
>  		goto unregister_flashnode_bus;
>  	}
>  
> -	iscsi_eh_timer_workq = create_singlethread_workqueue("iscsi_eh");
> +	iscsi_eh_timer_workq = alloc_workqueue("%s",
> +			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
> +			2, "iscsi_eh");
>  	if (!iscsi_eh_timer_workq) {
>  		err = -ENOMEM;
>  		goto release_nls;
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8d830a89-c554-7de9-a33a-987d117e99fb%40oracle.com.
