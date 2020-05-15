Return-Path: <open-iscsi+bncBDVIJONZ3YDRBVF3672QKGQEHRAR35A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id D20211D41FA
	for <lists+open-iscsi@lfdr.de>; Fri, 15 May 2020 02:09:57 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 22sf378242pgf.13
        for <lists+open-iscsi@lfdr.de>; Thu, 14 May 2020 17:09:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589501396; cv=pass;
        d=google.com; s=arc-20160816;
        b=hZVX0h3uWzcYLGezUoeYl8qx+B4etwMs/NsLaxWUhGszyAAspi1fTMzhtEKoV/56ol
         bJAgG1elnw/6yhWIHxIXwWoQhoD7cH7NuAMwtlS5yEdzeO2in6zZRkp5plxT/GeK7tY4
         +DHJKb6FtU6MzQ28QJnTK6ntTxbayUcUKAlxk1fbFNB6DPteItNZmGdVEfv4plbKfnyP
         Dmx14SMafAH63kKQMNt330wjdPO9eWFSnlhGqHLNN7Jvv4FPGFlb1JEy6ZOuJybPs0Fs
         qYprj7eK8Og9ZCrtz7Ewk0BJ9CEJMzRMlwtctBSUN1379lqyipMDPsJ2QUaPW9FOMnb5
         H0cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=EiZYjDTC597WQF0j8GB2krhPS0LmuUsUGxHRy8xQAmI=;
        b=XvUVAqDEYHEtQJVcoBiCmPi9eLeqB3kbXOYM1cbERf51UqpjwG+/CxlDKkTLyJoDpT
         kQswMESWJC1lcirpSnWBDPcb/OLgtI0dKNkEEXkCmZP48gIc2VXcPDyha5wV0l0x2L0x
         Pqh49JSZkp0nUAFT/UllaOSXK6CqTxzPr2N9NGZm9rxC3sdkPFp/6iLlOMUmsiNjJ/61
         NcP/CTBf53AwB8CUAOFFc3llqeRI4tdALeZa0IdHxbGzIgw1P5WYNuY0cYqScs6v0oLh
         J4ytvpB2oeMZu8y/Vbn4Nf6ddZjf7FcsOF6vD355Mf5UHBptJZFyLlsHESs268Qtb2iZ
         +/nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=b+L3rNSL;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EiZYjDTC597WQF0j8GB2krhPS0LmuUsUGxHRy8xQAmI=;
        b=MMkp8dqe0R6BhRcZRy7O5N7+FqTzgJerQ3evkzsV/uCJsRwu7wdYdTM9rQ7JfyRzpL
         RhPf0TlkyUGnCdyyQkD28M2lT64MbroZWKR4OFpPWtmGbHPSRVQ2lDqxnMXSrRicQsd0
         LqKZlW4po3bvY90R/36IhnABaH4BGg3a31fxsBqHtWGg2VPUyE7JFUSAq0MFZyikHIV0
         hEjtKCnXmTgDetRIfjITOoEHagGHXsIIyCw1Go/yglpoSBSdB53qri8mmLfFOQ6wZKu0
         L6IdvQ93k79jfgpwJB5TrbQCDkTKfJtGB3lWxRzI7v/axALLfXCphMKuu9MO2hhVt8VU
         c/pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EiZYjDTC597WQF0j8GB2krhPS0LmuUsUGxHRy8xQAmI=;
        b=gm6yzeOiI3Jr923W9YqiULe5hOsZEP1ZWnfBktQ+xEQWhuwTUoTg0fe/mxpdxsvRX2
         BvTb9NdtRI1Gtdazn4s4LDRT5FEoYoVssTd19pBab1I6+0ZQj9w7y32KqimSG2/4AjKJ
         es95EBNScFVzP3BHVsGPeeO8dmEG5imK2hhBNaHLCzxYaOQOswa7uS9XJH/aytP+ygac
         v82piPdyKaNyPSPz2c0yu9inAvCWlFCwjhbklIvLy/a1csZhniAA0DrTWqEC0Rr4wG7I
         j/H4qgRFawSw15+j9wylnkWY/nVBb4mM+vQhnSNnMOh1m+A5eoklASuqWImkf+EbzC4o
         jqFQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530LiaDTQZBr37z6NwszLEhteGSf7yG2SgaVNJKnaR3q2ZgwXa/X
	9GnILr7A2NQACPQiJX3QDsA=
X-Google-Smtp-Source: ABdhPJwkeWl4F/pCCHuxoCkLJEC/MBSmKhgpNqayAFAYhR3sfgJnSFlOynxTVSFdzAFn+dZgHnS9IA==
X-Received: by 2002:a17:90a:30ec:: with SMTP id h99mr563153pjb.213.1589501396095;
        Thu, 14 May 2020 17:09:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls252857pjs.0.canary-gmail;
 Thu, 14 May 2020 17:09:55 -0700 (PDT)
X-Received: by 2002:a17:90a:30ef:: with SMTP id h102mr570904pjb.110.1589501395723;
        Thu, 14 May 2020 17:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589501395; cv=none;
        d=google.com; s=arc-20160816;
        b=fFSuWLaML5XfRrImIqT5WCA6jCAHklCUNggioPYubmdPvv2x/283uGCmx0uvEMs3GW
         7aWrG7mG1PZXN7BSQeo3hSMkch39BCTH62fM4tkcpo5RNnhItvxJM4wsLKZK52yc/7+U
         dGBuHkwrxYiRWaFye9X/RF6FhmkLFbPL0CI8z01Kgs8uIib3mzjApvObJ++vjE8ZtCN/
         KkiuGg7+eFdjW9y6+FzJxQmkQwVttzWbKO1boV/RyjU7KQmgD0/x0gwDEIiqSHEK5Vfo
         XOCdZR6GGAs9HdkwjlCPXvhwgnSozN+nPBEmjoVUxytnlHdlQlcRE4lMpTN2FoETvhI1
         3G8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=LL5/JgD6jBMuhfdz8Lyl09y0lxpE8ogV4kJHKjq0xLo=;
        b=laSnY+eQ3bCI+61DRDKZcO/5Ez4UQRQgjrDNUMyFXjzLeLBW9orxcRoQy0MzbJt+1I
         6S7v3arxPhFXfp0ngK3siZ1dTqeTCTNqel8krZeu/RaQ5MAtH8Ow20ckN19Osrj2IvQo
         IiwoZvLmJ9GeAk4mDpG0G7+tF/AN8MavueEDkvck3oe88GQenum/NjrjxWkeE5clr9OV
         sneavYrzABtM5uz6q8g12k3dWzrhNJGWBJK/y3MV0VMcmGpUvphENPRRdUPklyY9NKiK
         CurGuEl6lYgFmNUS1eNVrtvAGubq58NPyd7Rk0u5E7AE6bQOSG/+VPFyvK5RhKONOaa0
         uO+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=b+L3rNSL;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id u6si55242plz.5.2020.05.14.17.09.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 17:09:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04ENvoHg175775;
	Fri, 15 May 2020 00:09:54 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 3100xwws9u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 15 May 2020 00:09:54 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04ENxsdD055417;
	Fri, 15 May 2020 00:09:54 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 3100yqayjx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 May 2020 00:09:54 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04F09q7J015591;
	Fri, 15 May 2020 00:09:53 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 14 May 2020 17:09:51 -0700
To: lduncan@suse.com, cleech@redhat.com
Cc: open-iscsi@googlegroups.com, Bob Liu <bob.liu@oracle.com>,
        jejb@linux.ibm.com, martin.petersen@oracle.com,
        linux-scsi@vger.kernel.org
Subject: Re: [RFC RESEND PATCH v2] scsi: iscsi: register sysfs for iscsi
 workqueue
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200505011908.15538-1-bob.liu@oracle.com>
Date: Thu, 14 May 2020 20:09:49 -0400
In-Reply-To: <20200505011908.15538-1-bob.liu@oracle.com> (Bob Liu's message of
	"Tue, 5 May 2020 09:19:08 +0800")
Message-ID: <yq17dxet5wy.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 suspectscore=2
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005140204
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 cotscore=-2147483648 bulkscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0
 impostorscore=0 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 suspectscore=2 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005140204
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=b+L3rNSL;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Chris/Lee: Please review!

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

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq17dxet5wy.fsf%40oracle.com.
