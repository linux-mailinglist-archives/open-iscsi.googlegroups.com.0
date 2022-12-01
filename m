Return-Path: <open-iscsi+bncBDVIJONZ3YDRB46GUCOAMGQEU5KLMRA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id D89A863E874
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Dec 2022 04:45:58 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id w47-20020a9f31f2000000b00411629bf3e3sf316026uad.20
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 19:45:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669866356; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ll6ful32IPhJpcBo5V5FG2Rxq2adnWF/sPnotbI2oEDIDp89seHz9zX0JoRv6Y9ibs
         szeZv66A41HISVK1/IQ4As8ZyKbYHYNKnXBD9ehE7jZGIrk/I399BjPF5UyncOLlRNNA
         VPsozyVWGT7O2R2F+ga+M8TkOoqQSUwi7gdy/gf9UD96bLHiVHuqFJ+D5IwFwEEZmj6I
         +nbRf+h3Ifd0ET5lrSYBJNaG9N7bugKLIOpLzj5qlud0N+5cFeuZ9dpGMF9kbbbe1sQI
         FyMQdyf8DMpO3B960s7IeKtN6MwrwJFJk7OowZNhEE9XYezY5CY0JdhuVqzYKgOsp/Ny
         Ywaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=FuO71gEs+4rWBJLxJ7XhIXcCEZlZzokYlq7VoDHUZdE=;
        b=DPNfKqOclGg7IglGMMVVBLqFeiYZvF9ElhoF0wMzAne+s9r8862DHu47SfC8vCAvIY
         AV/Y0SVoA82LFvukmYRijtWYUplPyTsvkA6ZMjYNGb0WD6zP/PDzcioZC6ByEwhR/r/U
         aVGlNQAogzvPWYZoHTUaav4mCRfdOeR4TPNnZH3Hi0BJJIjHQtbu0dU1LvwhHacyP8cD
         C0vInRGqTIut6aXHzT0hypwJ5mG4krbo1cVtTZ7lv42JrSDPvTBuiwtLbVepcV77jEa4
         8ECsc6WpCcvpaLAewXX0gmM6HX6W0iYQ4Cm3la7WbZrWbbMqZF3sa0YEfcF53/FWp/Y+
         9+Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=bPN5C7Gw;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FuO71gEs+4rWBJLxJ7XhIXcCEZlZzokYlq7VoDHUZdE=;
        b=otVP1BTsy97QkomF0sCjP6F32zdcfm3sN1jGQ7jgeGsFOLmFa/bOHkx7hk3Uqbozyn
         A+3h3XPFdYztkKLY7GS6sP+fLrrjpwZYB48O2rasaJO3Ef6iDoWkSKIKtgD9oW0Z5Pq6
         BzMPwPSJKaugI0Q8oDDJZBt4bSB6bzuKdp2xRrPpPfJnSnE8qjLDYCAmqvJr9mSBtwJY
         L+sTDWXXUkHVZGo9bVAy6rcHq8kkK+oJgOdIhJSdwIqdkw3GEztdGou4TEYH1tP4L9Ye
         IrL//x0ls/dTLAXala3HUnvIeeS2K9Nf+KRU3TJRhv6ejPXERY/L6tDfunXDD5+2opho
         esWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FuO71gEs+4rWBJLxJ7XhIXcCEZlZzokYlq7VoDHUZdE=;
        b=tytzr1HSQdeyfPplx4z7kBRDsQQOsHTpDI4AL0WtHKrdkjVnv74gvmo+mPR7MV+/fw
         zlT1J8xFZWSNf5ga2Zo+0U8cBBL4JBKmxwiMZbLGz1iOIrviEu9lkB+pKtVxPkUp1pFa
         BfXMzsEMkXB6rGaSMk2kd4StL3ER0gDKQxRsUDHJWF7+NbTIeM1kM/FJtdzFq/SRWbKY
         yoJfxGoRR4pnHx0HihJpqkQs5g6JLESk+EkLGRpNxC29XYxMuCKIaEp9wxgYSY/ATeR8
         Br5ov3Pi7KAX6K+z5F0LqcFQzHS5iA27YtUiYuwevC+eWO0e3YUh41hsaVYGGpYr8kgy
         pRfQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnM8x7e+ZmuMS8k5myUfzYX64SkaMIvAU7wzYiy3nluPDthQ8kL
	R7PA6783kSSj1qNtd3vwhWY=
X-Google-Smtp-Source: AA0mqf4n5Vt3vJoRs12OMahDDPxDGlC/KHuQwErIvCjxSJsmIIPu+yRaQC43h8JbM4d3Okm4tKJhbg==
X-Received: by 2002:a1f:1e01:0:b0:3bc:b857:af63 with SMTP id e1-20020a1f1e01000000b003bcb857af63mr17929746vke.32.1669866356576;
        Wed, 30 Nov 2022 19:45:56 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:130a:0:b0:415:6fd9:7030 with SMTP id g10-20020ab0130a000000b004156fd97030ls54365uae.1.-pod-prod-gmail;
 Wed, 30 Nov 2022 19:45:54 -0800 (PST)
X-Received: by 2002:ab0:734e:0:b0:419:18c7:58d with SMTP id k14-20020ab0734e000000b0041918c7058dmr13025443uap.119.1669866354492;
        Wed, 30 Nov 2022 19:45:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669866354; cv=none;
        d=google.com; s=arc-20160816;
        b=RVmrAtoSE5/V/QrrStcD9eoH0WGSfuJfq8bWxCxryhgOh9lSC1l1MeEh3G2slbjP9F
         AK5pqcLBoU8UZsFaI6XXmL2vNQsi13ueSrkezLxkoItNnbIw7VyPAjZjVtJW5Ra9PxZx
         3JwUuF1HYM09tEatt2OpkJe/NGe1UGIaD9Z6x+225Hp6SsYeQAbvaEva3KbbsH3vccBE
         d8Fp0DMY4NFTefr8qkMzS1Uvlr47b0aeflkV4EJ4PrQerU3bZhcmDAGpN2jFhFoGfWcX
         T4gFuIXRdmr7ls8yT+fUzF7tLZV50Ois0qKY5Nyvma/uA483ZR7gmS1K1XwQ5fJckad/
         Y2ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WEhVC477wNMw1d+bAnHN+IN4sbazPLMH070IA2JkQRI=;
        b=erdGyTUmToPpUGsKTIbMAkCeaMMUNZZQ53C2I1A70WEs3JKTZhoaeDDaUNSttqNpUm
         1qYRSHHUH327wQU7fAZY9M9uBNuKZzphdkLs0CWhkC/VRQQ31zfl9IRUJyJwfgX2NVzI
         2LMoDg61bToT2cEV3wiJJM8WsOgc7K2Y4fA/jX6OO2Q+5Rd/MjkXJF+qP1l/vsLWrY9l
         nxyhJCACzTL3UgfDqb7C+hpsuBlaZbwSFPFh+yLK0UL2WFGqSrnNHsONo/tJ8s4962y4
         OarCgy1DaF9N6iG2sxbGmxr/UKxroF0aUZ4KuGEBi+Q7b5Bq1GTdQI21cUEWDPMpzALG
         N4BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=bPN5C7Gw;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id u7-20020ab03c47000000b004192f334e13si411298uaw.2.2022.11.30.19.45.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Nov 2022 19:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B11PAip017406;
	Thu, 1 Dec 2022 03:45:53 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m40y43epc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 Dec 2022 03:45:53 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2B12Vj5W007630;
	Thu, 1 Dec 2022 03:45:52 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3m398a2ctc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 Dec 2022 03:45:52 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 2B13jbpn033801;
	Thu, 1 Dec 2022 03:45:52 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3m398a2cjs-15;
	Thu, 01 Dec 2022 03:45:52 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Mike Christie <michael.christie@oracle.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        Chris Leech <cleech@redhat.com>, linux-scsi@vger.kernel.org,
        Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        open-iscsi@googlegroups.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-kernel@vger.kernel.org, linfeilong@huawei.com,
        liuzhiqiang26@huawei.com
Subject: Re: [PATCH v3 0/2] Fix scsi device's iodone_cnt mismatch with iorequest_cnt
Date: Thu,  1 Dec 2022 03:45:16 +0000
Message-Id: <166986602274.2101055.6269524051761428499.b4-ty@oracle.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123122137.150776-1-haowenchao@huawei.com>
References: <20221123122137.150776-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-01_02,2022-11-30_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0
 phishscore=0 mlxscore=0 bulkscore=0 spamscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2212010022
X-Proofpoint-GUID: NY5ovK0SUI2ABWWDewUWpoaYcDKTdGgF
X-Proofpoint-ORIG-GUID: NY5ovK0SUI2ABWWDewUWpoaYcDKTdGgF
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=bPN5C7Gw;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Wed, 23 Nov 2022 20:21:35 +0800, Wenchao Hao wrote:

> Following scenario would make scsi_device's iodone_cnt mismatch with
> iorequest_cnt even if there is no request on this device any more.
> 
> 1. request timeout happened. If we do not retry the timeouted command,
>    this command would be finished in scsi_finish_command() which would
>    not increase the iodone_cnt; if the timeouted command is retried,
>    another increasement for iorequest_cnt would be performed, the
>    command might add iorequest_cnt for multiple times but iodone_cnt
>    only once. Increase iodone_cnt in scsi_timeout() can handle this
>    scenario.
> 
> [...]

Applied to 6.2/scsi-queue, thanks!

[1/2] scsi: increase scsi device's iodone_cnt in scsi_timeout()
      https://git.kernel.org/mkp/scsi/c/ec9780e48c77
[2/2] scsi: donot increase scsi_device's iorequest_cnt if dispatch failed
      https://git.kernel.org/mkp/scsi/c/cfee29ffb45b

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/166986602274.2101055.6269524051761428499.b4-ty%40oracle.com.
