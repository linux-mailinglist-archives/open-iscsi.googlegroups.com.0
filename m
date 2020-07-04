Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBS75773QKGQEDOKUUCA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 340162143EC
	for <lists+open-iscsi@lfdr.de>; Sat,  4 Jul 2020 06:00:12 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id x1sf6315306uar.4
        for <lists+open-iscsi@lfdr.de>; Fri, 03 Jul 2020 21:00:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593835211; cv=pass;
        d=google.com; s=arc-20160816;
        b=IAPJfbCNw5v78bBoJDd+MvUPBm9i3/AAiNhK4mFrfj/vpEAwGJyLi+oL8BmAJX2ocP
         XQ78KSiw03shp5gQEanfMIhNy1W4Q0RTjz5mKkPfD0BlIgXCiN53SUJdlXsc975mjJRH
         3cy+G8tn4Imyfsz7H4b99gdJOhfMoVFFCCf62g4a73Miro5FZ9LpYW+RifI9CZ+qjlLE
         hvhbHMprmpi8JIH2sqq3lb+j5lz7rNwJLDcHqGfq4yrkSm7EBGQhPZSP3+sFNgYiCbqs
         jW/zVihwrpuxCwo5XVjt/K/gru166N5t4U6YXLPCM6DncJtEXjodedtrV/1i12fs0EAX
         rLcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=XDfW2CmEq5wsPHFc5VC/AIq34rR8yt9j67oBl6jQMCY=;
        b=1CM8dSlLCQmJ2y9EYhH29aDLfAdXmaewvm3m1bAc+SstkI1za9VcqDikzyz9X+Mtja
         XeTLpRu8tngJkEVrpZhSpXJvaUaJdpvn7gnqLW0KbRBFTX/EeFWrsYjhN+64XD5Ai4eI
         AH2ZKDI/LQ6eSifYHAkEsCUHupo8YvTIdJ1HVRiDOy4N1CZ93SdflyPU6irOFttH4lJY
         fFZ0r19QXQWn2ytPTtpVYcbhBVSIUt7tzvfIHh42/PMdBEpu0lKxULJ0vXzXgL+gWCA8
         fw3dTKn9piIJg8Hta45hGOMbrmsUrkeJDM4S+amGwQLg9VI7L2gi6UdDylYdXNLtU7a4
         jZIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="ZCy6/gbx";
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XDfW2CmEq5wsPHFc5VC/AIq34rR8yt9j67oBl6jQMCY=;
        b=iZsL4zS4Kmoa0RRQEkEtA4tQRn7++XhOqw29Mw/2GEJEn58i5adephDmrVu1IpUUeQ
         +hZ+037b8hNJTlwKx82JFQcsZosdKk6VRe+ob3EznFX0D3vdnmnpcissgaGhHUrt8p/l
         ddbvQvP5OH8JSDzWNf1oSqCv48s3EnxZBMRxtWAxtzfXntxuMyxMm1gMsExuxManll5B
         O5AQXkRauM2cF3/JpfDH+acVi7ovGXguxry8icYeMkeAPR7IO25/JAdGts+YCciGvgue
         sud1HULdaGVUicQn6q2vX1ej+wbQCKK1JZ9qsegsFAODFyBM44wIeJ+sSke48IMOzb4Y
         EDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XDfW2CmEq5wsPHFc5VC/AIq34rR8yt9j67oBl6jQMCY=;
        b=HlSRLl5/zMrhKJ5PcGbaxjvtNUiDns/aurTbfoNMxkKzZE+jtPu15Y7MtdY6M8zTv6
         tRwb4ExS8xVzaMWZWogSM/iddpSjLtAwtox9E+Bgpw53A13Cka+YBACGDlhjwKSzOyRv
         Rn0P2yz9x+IAbzxhv7sHyL0LymwQP50NMtugIKCJVQcWCW+JZ+r5olDBzn/ILWap8veq
         nadM7xCwkfrZ5lhKvboH3nASb43FtcJ98bfPt/GFFrkbzo6oSEpRxfGc+LJPP5zB6kNj
         PntXRyVev7aPUMPeydggP9QfwxjdLybXfnOnd/YN5gs/FvIsDv1WWpBEoEw72wlig7iD
         lciQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ZVZPKlhZeiR13sQhFqq58KkOK2wNATonBjG7RRiQaCqjNRE4s
	mvzfRV6/RroGAwMwVZM6WJg=
X-Google-Smtp-Source: ABdhPJyXkemc6Ibb2K1seh9rZL9oAiV9V7j+bH5hvGPHLUyvz9eJGz9onZfTETc347F9165ZpoqJnw==
X-Received: by 2002:a9f:2887:: with SMTP id d7mr3872880uad.47.1593835211271;
        Fri, 03 Jul 2020 21:00:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:ad49:: with SMTP id w70ls587077vke.0.gmail; Fri, 03 Jul
 2020 21:00:10 -0700 (PDT)
X-Received: by 2002:a1f:5ec9:: with SMTP id s192mr28373760vkb.97.1593835210855;
        Fri, 03 Jul 2020 21:00:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593835210; cv=none;
        d=google.com; s=arc-20160816;
        b=f5wt9wRWEWoe04bgMTALl+0W+5yQYiUCBJrhjX4aIwxHTuqyzUePrCG7WzyTuOpTQw
         xadfX5JKxvNR4loZ6iPfSsGfR7T/P5a3NRlEry61DAhz/LRndgpCUoA0NJDutpGlwVns
         lHD475H0fElAR1DkZIGWn0FhLkcu/IPozfFuWeybjTjReFHeu6gVUxDPjtkabruM3AZZ
         OulK1/Lr4gyYr5jI567pKqeUEscb3hmf8ecfY6Bjgp07gcsXH/YQwzqvYxdfr0N79Zn5
         yx08eOmGcLP1eA5iliJIjj40ZjAuEH04FprXgiLhSFYQ96rVH5sf6UxJf1RoHgu6GzyE
         9KVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=OOjSy24Hryk069xd6ZwNAjqh2akFvgCF592foBx50ZY=;
        b=COmJz92nWFO0Qg5NSVn7KpZLsXoJ4jUkamZ39kBJc9UCHaqH8jCUrkWHmoUOA/hBL1
         rUIU61Vni7KZWvyGHpE2W9HuRvDrz5rzwwpLgb5xsnyKB3i3qmdqSWJre18+MUKTOAwS
         g5afctwdGmMY4vJ1nBhL5dG7oFdU0Es/8C7rSzy5/ePdcwVV5uRt6qDn/Zm2n/cydvOv
         Tjcwlt5n7bpxsYpY+GIphlXhvLMI+I+nGXvbmU87GtP+LmW5JvPF9AxZBdjxAqcnTFIX
         zTqIMmAr9dAwippLSK9N1BphbztQGj/a/ue4SNONB0DIZJFmF49XyuV3qBIVAqThmxMX
         BgGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="ZCy6/gbx";
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id t26si376461uap.0.2020.07.03.21.00.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 21:00:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0643uxX4176078;
	Sat, 4 Jul 2020 04:00:09 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 31wxrnqkmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 04 Jul 2020 04:00:09 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0643qrli012465;
	Sat, 4 Jul 2020 04:00:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 322hjyk9rf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 04 Jul 2020 04:00:08 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0644066U017673;
	Sat, 4 Jul 2020 04:00:07 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sat, 04 Jul 2020 03:58:53 +0000
Subject: Re: [PATCH] scsi: iscsi: register sysfs for workqueue iscsi_destroy
To: Bob Liu <bob.liu@oracle.com>, linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com, martin.petersen@oracle.com, lduncan@suse.com,
        cleech@redhat.com
References: <20200703051603.1473-1-bob.liu@oracle.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <a34c8886-a6dc-4ce0-5ffd-a09d913daa5d@oracle.com>
Date: Fri, 3 Jul 2020 22:59:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200703051603.1473-1-bob.liu@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9671 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 adultscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007040027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9671 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007040027
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="ZCy6/gbx";
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

On 7/3/20 12:16 AM, Bob Liu wrote:
> Register sysfs for workqueue iscsi_destroy, so that users can set cpu affinity
> through "cpumask" for this workqueue to get better isolation in cloud
> multi-tenant scenario.
> 
> This patch unfolded create_singlethread_workqueue(), added WQ_SYSFS and drop
> __WQ_ORDERED_EXPLICIT since __WQ_ORDERED_EXPLICIT workqueue isn't allowed to
> change "cpumask".
> 
> Suggested-by: Mike Christie <michael.christie@oracle.com>
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 7ae5024..aa8d4a3 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -4766,7 +4766,9 @@ static __init int iscsi_transport_init(void)
>   		goto release_nls;
>   	}
>   
> -	iscsi_destroy_workq = create_singlethread_workqueue("iscsi_destroy");
> +	iscsi_destroy_workq = alloc_workqueue("%s",
> +			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
> +			1, "iscsi_destroy");
>   	if (!iscsi_destroy_workq) {
>   		err = -ENOMEM;
>   		goto destroy_wq;
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a34c8886-a6dc-4ce0-5ffd-a09d913daa5d%40oracle.com.
