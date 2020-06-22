Return-Path: <open-iscsi+bncBAABB4WD5D3QKGQEJFCCZFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id AADA120D055
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 19:16:35 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id g12sf12667629qko.19
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 10:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593450994; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q20za03xI34iihlwElq4AAHBftCpP4wxipra1X/MV6gy7NJ/JOqKzgpT7n6eSkJyyi
         ICrY54YhQWmbfyJrr18yQCExWDoVnSYUqI/Qo6cTMGjRm8CeGYWpuTLpI+4Sdy9m9cNy
         GXsdtlzjQs+nvNgK4myo/FzFvAzK+A6C5MX+U2bZk9TGEygupxN5i9ECtxELd1EmLjSZ
         MJ4NLFKNfKJGFZsIFyYgMwv9G0WRfMcOuOS22HKCKYK0EHMh3C27kHQPMt3MlzmMs9H5
         e784fMsJ6PbRS+LSSrIIG7XXfDBvtecqwex/ch5T71zbu2gwnqtRx2ag/umBqfFNAotD
         UfQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=IDRoPgVuO5M11Gw9arl4UOS7czdgd/SFSy5ga4OUY7I=;
        b=hedq4+5lkshzm+wOzfMtcuEPM5nvYrbeUK+cs7UCNwWPG3guexG7W9PhpZqhWfmKTk
         vHnYGbZUC9eoZ5f3pf49W9dM7yLyTUKJp8FTXSqHnHOMJcLEJdTHl5Y4K5VtMb7AcnIE
         2vbi4ju2icLOnZlusJugudlB4xhPqMvIceAO0+R/7VyP2WLUTo9MLc75vjG0EwM0PUNJ
         degEPTWfnIiwq3r5CKVPnSHNsjVseJhOt1PqVPt++mSXX3s1Zvgq8VdsMVQoOZC/eNpT
         1GlRZ18jjU29IsMTmPvnHGDeBtjNcnZwJHkJY7Ob/7tNdAofWHHBx/Xb/tPju66BiDzt
         fjiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=XbuVYj9S;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IDRoPgVuO5M11Gw9arl4UOS7czdgd/SFSy5ga4OUY7I=;
        b=Kn+KxWSXF/sxWlAbkoq0lORSYyd63DRrR2QM4B/L3/zJLW9t3Xuqtmatgdb/vkOo6S
         2dy0GZOLgs+VTapWPlkRDORaILFQA+Pu6cqkvcTapCfnL6SgRAdAe6OK7eHgnSLjtNuY
         pX1TakLygZ7yBvlA57wwb+KZZnavNxTMr3wcMaIyBdRd+uZF6T6FMFSzXNT9pyj6mpIy
         /vLCRqQfDAf+0eMVnvMa8SFmauVxyiWYTARSD0j51wBov9lPWgr7EyzInnliLgFK8MFV
         qC0alEEYXp+yJVkaW9d4NN7KXDNdjPm/URA47lfm9XZjVLYpAcChbGu2rwP9eWcq97ib
         yJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDRoPgVuO5M11Gw9arl4UOS7czdgd/SFSy5ga4OUY7I=;
        b=LcvQDd68XGllnXmNPGGzR+GB/xX7cApS7UVIClG4Tv87DKLkO3WdHmPgg+ociscLMM
         XxRQ5FwG5Zr8zr1IbneZHj+XZkfBzjr+N63OPp5C7WRu18b2ULzIP94C9H9nngrKGDo8
         IS4txYc1xSqEzTaoaxneABssIrX999S63aRR6+UWZAYe8EUpz4Gto2aT5hEuaLBBQ8ug
         R40wfcT3uZHMRfnm/3tyePT4hnMELl7KIF1cvDw89NVwWDiXfk4XA6a/DfGGbqgxhit9
         fN4hxkPRGjUx52BOjgc5vWHRLcRtHNAmUOrK2gI7p4jcKSKKq19R9oIOZHo0ARs5eghG
         q7/A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Fdi8sly6Vrt6Q7rCbzX0iOnp73iSPBMev2Te946kjDCIweqtf
	eyM2ABr1gpNbwjwZhdqjeNs=
X-Google-Smtp-Source: ABdhPJxDpijFT2OLxVHfdGrJWwzAJo+kDO+mEMCCzHABAHb6sLaRnTwIPUM3eMzvK0aNsiIXYdtZ9g==
X-Received: by 2002:a37:6191:: with SMTP id v139mr15926282qkb.213.1593450994627;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls8326135qkd.2.gmail; Mon, 29 Jun
 2020 10:16:34 -0700 (PDT)
X-Received: by 2002:a37:bcb:: with SMTP id 194mr16588807qkl.103.1593450994258;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
Received: by 2002:a37:a083:0:b029:fa:473b:86c9 with SMTP id j125-20020a37a0830000b02900fa473b86c9msqke;
        Mon, 22 Jun 2020 08:40:08 -0700 (PDT)
X-Received: by 2002:ab0:71ce:: with SMTP id n14mr12758345uao.46.1592840408225;
        Mon, 22 Jun 2020 08:40:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592840408; cv=none;
        d=google.com; s=arc-20160816;
        b=GTccJx16V6jH+pBxt9G6gkpjs20ZaUg5QctLjxu/4Xj9KY3GbPIy46eHIa+h70qa7z
         AMgIfm4QW34bHvcE0pDvxZx9t8xEfN9ArituISlc9fINMeGKzYKol1e/9vXk34bTufii
         sM6gpsZ7ujdcIw8h+wYlOT9J3bfwLcYbNdLvsBcGe/jF1P4m/ndOUEIlgZdBgLthugKu
         iAnwfPMqsqihrvxvujolySoEXPA5MRNAzouVwdN+sY/H0wBGgXmevNx/8VqewCwS+s9N
         CE9AYn2OBrttaVzqzeumcdJOw0ToXuKaCCNYT1WzMuYtdAT9q7JsvZwzW/Kfm7xGnAR0
         eo/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=c4dmr7gId2py12uyWP0rVSm+TykjfDw082cODL2KrW4=;
        b=oM7cOcPFT4QQeB+RQ1VOmhcCpEZ3/vck49Vg9cnDdppBGrz0M9OkLIC4y4Lxm/MoZD
         TGVOghQKDZTNz9OlfiownHSHIuLY7BdgxvyII03c104uhiO6yZI3LKO9i094ZEAYP2hW
         +3OGcZ1Nf5jNpuRllEEj8VrS8WyDr67NhPRz2Q2yYUPeHP5QcEk0FLTFkaN47DKP8My8
         rnirn0nn0znUNyNATtHiYRzDq08zvFvgOwWcmalFcdngyGS7fUQJhbaJRYE5obLZzMYi
         XlCr6CS7xA3BkGnvZaZSKxF3t8wJv7wrzLUy3rW8YihVXlK/Tyl8hc19zAMmZnkvv1rK
         qwKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=XbuVYj9S;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id q20si1545733uas.1.2020.06.22.08.40.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 08:40:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05MFbtfu031362;
	Mon, 22 Jun 2020 15:40:07 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 31sebbg4ww-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 22 Jun 2020 15:40:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05MFd4VP065013;
	Mon, 22 Jun 2020 15:40:06 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 31svcv8q94-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 22 Jun 2020 15:40:06 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05MFe5a8014046;
	Mon, 22 Jun 2020 15:40:05 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 22 Jun 2020 15:40:04 +0000
Subject: Re: [PATCH 2/2] scsi: register sysfs for scsi/iscsi workqueues
To: Bob Liu <bob.liu@oracle.com>, linux-kernel@vger.kernel.org
Cc: tj@kernel.org, martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, lduncan@suse.com, lduncan@suse.com,
        maier@linux.ibm.com, bblock@linux.ibm.com
References: <20200611100717.27506-1-bob.liu@oracle.com>
 <20200611100717.27506-2-bob.liu@oracle.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <cf9ae940-87b2-c8a1-3dba-4d2b57ebe9dd@oracle.com>
Date: Mon, 22 Jun 2020 10:40:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611100717.27506-2-bob.liu@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9659 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006220116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9659 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0 phishscore=0
 adultscore=0 impostorscore=0 cotscore=-2147483648 mlxscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0
 clxscore=1011 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006220116
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=XbuVYj9S;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 6/11/20 5:07 AM, Bob Liu wrote:
> This patch enable setting cpu affinity through "cpumask" for below
> scsi/iscsi workqueues, so as to get better isolation.
> - scsi_wq_*
> - scsi_tmf_*
> - iscsi_q_xx
> - iscsi_eh
> 
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>   drivers/scsi/hosts.c                | 4 ++--
>   drivers/scsi/libiscsi.c             | 2 +-
>   drivers/scsi/scsi_transport_iscsi.c | 2 +-
>   3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
> index 1d669e4..4b9f80d 100644
> --- a/drivers/scsi/hosts.c
> +++ b/drivers/scsi/hosts.c
> @@ -272,7 +272,7 @@ int scsi_add_host_with_dma(struct Scsi_Host *shost, struct device *dev,
>   	if (shost->transportt->create_work_queue) {
>   		snprintf(shost->work_q_name, sizeof(shost->work_q_name),
>   			 "scsi_wq_%d", shost->host_no);
> -		shost->work_q = create_singlethread_workqueue(
> +		shost->work_q = create_singlethread_workqueue_noorder(
>   					shost->work_q_name);
>   		if (!shost->work_q) {
>   			error = -EINVAL;

This patch seems ok for the iscsi, fc, tmf, and non transport class scan 
uses. We are either heavy handed with flushes or did not need ordering.

I don't know about the zfcp use though, so I cc'd  the developers listed 
as maintainers. It looks like for zfcp we can do:

zfcp_scsi_rport_register->fc_remote_port_add->fc_remote_port_create->scsi_queue_work 
to scan the scsi target on the rport.

and then zfcp_scsi_rport_register can call zfcp_unit_queue_scsi_scan->
scsi_queue_work which will scan for a specific lun.

It looks ok if those are not ordered, but I would get their review to 
make sure.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/cf9ae940-87b2-c8a1-3dba-4d2b57ebe9dd%40oracle.com.
