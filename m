Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBN646L3QKGQE5OLSBOY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F184210F7E
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Jul 2020 17:39:36 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id e4sf17101278qtd.13
        for <lists+open-iscsi@lfdr.de>; Wed, 01 Jul 2020 08:39:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593617975; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ymyq0MovpH5gSVhlNLuSlsmaHSnO0+toJIzXGy+G10eaTOwVf/nAsmHxO+uR67Ytqk
         keoPcnop2YUomyRekJMLeJz9cwBj01VsTLtbMOvYtCIfzBUQ6mNPsjBND4SCBlFxxhYy
         g+7dPvAcyf2MOCk4xkhfYMLVXXh8xrnX6cJ9UjL1tdYgV284vEAWJTeD2GO9mabh4PR4
         yaqW3tcZz4DFPc/BVTgcfO7aFWu5wox7pq1zNgPv514UIfu/iiXG+unW/sBdTKSukURj
         FbvSXQskCJRnIwAhJPpmFHn/x/jUhiU+puJEOah2luWcGGp2gD7w376PaBvBSLeC9yFZ
         H6EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=dHAO2Zj47IEE5C18gsTj7uF2SnmB2QaThoYoBcFE0kM=;
        b=R6UpPL3H5s+mc+93T5XR++N2MNTKPJfNXWJCyZJmoukwG+KXppIsML5INNw7/96N6U
         ps8RAhmMGCo5tP0BJio4PRVPOJ6IHzzkuLp7r/ItgvXt2Efyn96ZbzDE2q0lR0jhSA0P
         g905r/PYBV/H8PzBSM8Za6dWBek2iepNsmgNG1+E7cUpG1nlragW+oQX4xiVeOU4nMFA
         zgI/uwXnOhkIHh49W0oX5lLn0ne/3SU/pvvYCt3ARPnr6jiXgtqUMoOvkwza9xt8frPp
         DtziPHz0MRfOD2pCfUj2GetfVqTlaLbfMJE7yfjy/kCB1GEVXhLOSpAVvw8MOlERfZdw
         hFUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IPYfQKZc;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dHAO2Zj47IEE5C18gsTj7uF2SnmB2QaThoYoBcFE0kM=;
        b=eGEAYe+gWjLn69J8k2Z2FBV19kHp6TkdhDRjnS3zhPytYMR9eIv3qc0Ia27SQNhdJP
         uurJ+GDNzsqYkoJJEj8r+RGbUrglgsEAhe6ZCKf/HNyrDSfeJXa064ypNuRQGjtpD81/
         hZ6q2mz+MEkinIKtiFTcp7cL7f9XAvbmDC/mxe9ZOyEnHIy+cV7Dbl4Zd3htCxvec4kF
         2H9yaF5f8U6mqKV2dArDa+nqt0IfHF0DRHSWWz9R0yS0IhDQp9+V6xm0z0zLa3hIh4CI
         8zKF53zmL9LPhwECamUu14Kv2AF6sUvMZUYwthREZFrIpef5Iu4j7sunwn22SJ2SJ59/
         WZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dHAO2Zj47IEE5C18gsTj7uF2SnmB2QaThoYoBcFE0kM=;
        b=OxzPoNPx1O8NFzqYtGqxEdidwtARUfybPuYjUW+tomkIqd2cSV9rHTZ7JWcByTMhCO
         sQDPAfNTcNJWYLu6IFeMKp46XvGYKsNisf+uyoDqhg7nIwBJV3lpLdS/9scAtr1BocN3
         67x85yQsIIF3SFFrxXpDGVuZ5/M5PnZsFVDrKOSADTw3rLaMyruNtxTDdK0enceLbKGV
         52VYhuYrAam/AlYCCQGJB3nlOHGyU0Ls9HbUJ26Gzuze6/MfoXQrCkigMhz/1HaCjsYW
         gJGhN339hrVKxS/arobVi5NVX4LK3rWdmqyk5ySjGrNQDUwgCaT+nM4KAMLYi2bRhWWU
         0YUg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5338QLlShZ8OetqV3Ap3Sk0YMv1uxPuPjr18/0A8ZGWbR7mTCC1k
	l2AAE0vDIKf+8bQWFfzmNm4=
X-Google-Smtp-Source: ABdhPJz3iKNl8mXH17WiP2zlJjYSbmtzzxvJ7p7EJDb3wTVRZ29fT5lERfwo0m+3qQYZM7heW3fAug==
X-Received: by 2002:a37:6886:: with SMTP id d128mr26375200qkc.12.1593617975338;
        Wed, 01 Jul 2020 08:39:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:ea09:: with SMTP id f9ls1188271qkg.1.gmail; Wed, 01 Jul
 2020 08:39:35 -0700 (PDT)
X-Received: by 2002:a37:9f82:: with SMTP id i124mr25452691qke.129.1593617974992;
        Wed, 01 Jul 2020 08:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593617974; cv=none;
        d=google.com; s=arc-20160816;
        b=p2gDpF+7VybIR3Oty9/GNMD1d2pFcSE158KTne9ShFZufhjbNdZQ4kik7GObZhIbcZ
         XUSckH5xz5AsBwSMa05qK+2psnGucXcBPYjzgsMMw8a/BzBJlDjWOz/pYbLJCXVRZYxh
         +FxaUmn0gTpIOxyX0T+ZfHs0FfmhOUgh+SUe8mtxb2fqejqCXQDbTRI6mtbev/EBhSXR
         ByMLBr8yeDKZ52jZEg/3795tMrP8QGERoMoNRHgH3UOh4A/B1crjqM7dO5Zf32auE7tD
         Mp/FG7fC9ayFmxBK+9/Wtmnk98NHFwwL2L84JkpNxL7mCQY0e44cgseEaGCn4A354QXU
         Z30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gS89WSm3Ys4J06VdBiAeWPQcb2O3EqSy09enLgjX5AA=;
        b=bCj6xdRl7PFiFhGcDKUD7G7q0RoGToiPT3GI5Ls8/4YbT/XhD5vL3J00Hftcrrqio/
         lPT83J0+VyxzRuTKMsdzJTvA79Uhl4q5/FOQWi6GEITtFJBcqyPINS3jv1KR5LYG88UZ
         Asqdg62sbuSTOopS7ZZJTZvNz8E1K2jqRNcgfCbVKVMlu5vtLbfIQRaU42WwohpSr46g
         baJP+CPpVGmo0lI7LvsMVssd6Yx8QSzF3aaveWgoea1U3QHWOiqqt3fkV8s1OiiphdUT
         68hnNceuIGodSBFRv7c2iWFjRfdBPwqoPo8BTFrgzwQUArPRDvR0buVgINnxE/nLJKVR
         hC8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IPYfQKZc;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id u17si340997qka.5.2020.07.01.08.39.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 08:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 061FcEmF078885;
	Wed, 1 Jul 2020 15:39:33 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 31wxrnb84y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 01 Jul 2020 15:39:32 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 061FcjoM070963;
	Wed, 1 Jul 2020 15:39:32 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 31y52kf2ws-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 01 Jul 2020 15:39:32 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 061FdV7e008693;
	Wed, 1 Jul 2020 15:39:31 GMT
Received: from [20.15.0.2] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 01 Jul 2020 15:39:31 +0000
Subject: Re: [PATCH 2/2] scsi: register sysfs for scsi workqueue
To: Bob Liu <bob.liu@oracle.com>, linux-scsi@vger.kernel.org
Cc: martin.petersen@oracle.com, open-iscsi@googlegroups.com, lduncan@suse.com
References: <20200701030745.16897-1-bob.liu@oracle.com>
 <20200701030745.16897-2-bob.liu@oracle.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <fe5cb411-aed9-0bb0-e55e-18629e41eb9d@oracle.com>
Date: Wed, 1 Jul 2020 10:39:30 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200701030745.16897-2-bob.liu@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9669 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 mlxscore=0
 adultscore=0 suspectscore=2 bulkscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007010111
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9669 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=2 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007010111
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=IPYfQKZc;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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
> So that scsi_wq_xxx and scsi_tmf_xxx can be bind to different cpu to get better
> isolation.
> 
> This patch unfolded create_singlethread_workqueue(), added WQ_SYSFS and dropped
> __WQ_ORDERED_EXPLICIT since __WQ_ORDERED_EXPLICIT workqueue isn't allowed to
> change "cpumask".
> 
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>  drivers/scsi/hosts.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
> index 7ec91c3..37d1c55 100644
> --- a/drivers/scsi/hosts.c
> +++ b/drivers/scsi/hosts.c
> @@ -272,8 +272,10 @@ int scsi_add_host_with_dma(struct Scsi_Host *shost, struct device *dev,
>  	if (shost->transportt->create_work_queue) {
>  		snprintf(shost->work_q_name, sizeof(shost->work_q_name),
>  			 "scsi_wq_%d", shost->host_no);
> -		shost->work_q = create_singlethread_workqueue(
> -					shost->work_q_name);
> +		shost->work_q = alloc_workqueue("%s",
> +			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
> +			1, shost->work_q_name);
> +
>  		if (!shost->work_q) {
>  			error = -EINVAL;
>  			goto out_free_shost_data;
> @@ -487,7 +489,7 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
>  	}
>  
>  	shost->tmf_work_q = alloc_workqueue("scsi_tmf_%d",
> -					    WQ_UNBOUND | WQ_MEM_RECLAIM,
> +					WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_SYSFS,
>  					   1, shost->host_no);
>  	if (!shost->tmf_work_q) {
>  		shost_printk(KERN_WARNING, shost,
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/fe5cb411-aed9-0bb0-e55e-18629e41eb9d%40oracle.com.
