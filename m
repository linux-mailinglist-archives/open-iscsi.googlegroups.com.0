Return-Path: <open-iscsi+bncBDVIJONZ3YDRBH4ZVOXAMGQE6CV5CCQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2B685272C
	for <lists+open-iscsi@lfdr.de>; Tue, 13 Feb 2024 02:57:54 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 46e09a7af769-6e2b8d53e66sf3929054a34.3
        for <lists+open-iscsi@lfdr.de>; Mon, 12 Feb 2024 17:57:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707789473; cv=pass;
        d=google.com; s=arc-20160816;
        b=qLY68XPzUmHu/8zPg8pY7Y82qNFSP9MS11MEhuxaiMvV2Gk1fAgx34JN7680Ul0uGp
         JqFOgy3zn4QcXaYUe0XPAnJhK50CJbW9pa/idOrnj86SbU1C+/YZNSvqbRRDP5OIlK55
         9AoTi2C1uDniCnPh7XlKqAfBo6VDBovRrYU52UB5DX8Smx9E1VNdD+ECHQwgOMhGtrFG
         bkXxcelTk1bX0y2fUlza1nSNx0q2wsW5TEkEU6Td63t9IbefNialpSww8GG/9PsepSw9
         vm1r7HurUugdLY9kiPXJGHFp8iF5GlZuZ84t50B6gZI7CfgRwmRAfmfaNjJxTQ76LPau
         NfIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MVQe67Zd+EqUc2yKCchk/v2QAbMws6wkAOiMGUMBZnA=;
        fh=yyGjh6Ixs5Kk2QP3T1KZISp/ikELQWYAfJGaxONXdWk=;
        b=GzZY5q5Jc93YNChVPoX14gdI/aWUJ1WDrcdfbI3buHHcvNPGkpDmJJTpvO76v8Y5JV
         EGriVlS2FrCR2Nmu7youV9oYLgLaDSxPtS59Eda9fC2/spy9M7uzqDfIs5RWfvgj1/ex
         0iH3X8qkwV/rp+fDI3pG67Q5TqL+yx//rGj+rG4St0f0DhMYAfrisuMJ/swH6x8ujNtr
         pd8sBqXH8ZZompJaWN5QJupptmOq5/JThsyPJMClMpmFboHKK8VcxfjxeCVUJ7NjE4q3
         M1oYA73wc/eBzBgWLd30AaWA1t4DizoalkL8pQyRC0bB54WIcCFb5F2zfs+RlJBbGmrQ
         PBjw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=hvH5nxM1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1707789473; x=1708394273; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MVQe67Zd+EqUc2yKCchk/v2QAbMws6wkAOiMGUMBZnA=;
        b=cofLNfNzvd8S5eqMxv5hdBMvS1XP7p4AwpIOdtsoiv2h6e0jjnSJ9Cia7bltYlz4QF
         xwrh9+cXcjeRbDdoUehtv1qUVRQJQgQo9L255cj6+7zkxF8acMymBAqc4hpjvD8wNddZ
         CIElySK3aQgCV0tVyfioMOe9h9guYPse6UokytpyKNxzkdFUWCgB9VzWcxtQO/3zzxkX
         22vnkyZxMfXXPiOL30TRuYZpabzxV2DefqZhXRVE1ZoZF7/5GT0GzRotpXcVHDG6KL3L
         IgnUlMHzd0AOta+v77AQL5eewsci1NgPYjM8TBJyHVdCl23cae8EhKn/exOWBV9K3vPO
         suqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707789473; x=1708394273;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MVQe67Zd+EqUc2yKCchk/v2QAbMws6wkAOiMGUMBZnA=;
        b=lybXz9VxMxICLW699SdpMagDfX3v7JsGY68ty/q5JgsSnFwsmnKgKBmyXJLJWjKXxS
         wBXtm9ZWZGi1q4yXBgD75FtRB7GX/tZOfjTyfdRRzVWVwtFx0ZUgOWJZFVKup8OXRgv2
         PRDM3HE4ULfnurAuobbQyY/hOxbSj+tuiQB01qxTxOBEq3xoonGlmhFyPpi4QHxuQru4
         T4SAu/L3MWOv4ZPtIABGW8cTLVgiFVlGxfB42SWIb1wp/t6Ffz8poHHnlU2dyhofT3lc
         X8OthsWn8HLt2HHrbt4cyKNlZINasme5QB8k5B1IdY0ZdF+/U91Bf/ZJb1fnoLPW8S5S
         35tA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXKEjfaU4JH0gLfrgk07IbwGDC92GG8QTMFM5er20yrlokGoZ2S4mvHmcS3KAsVo113LkD0aEtLHKI6H1Tb4RcBbDR7lz+mM/M=
X-Gm-Message-State: AOJu0YyKbXOeNFDNQGhw9BCIXciUH5qK5QRKARSexZeT/aQBCK52GcPN
	YbA4ugYKWmDvKzjtnk2tz3STkrkJ2Brk8J88LEgzdwRZq7Y69lPT
X-Google-Smtp-Source: AGHT+IF8OWBYlhdh6hmpI032QQClBhkUjzG7a31bKAVmIm3xwj7VcobM/CKum1gPRa8IQszKggR/XA==
X-Received: by 2002:a05:6871:e70a:b0:218:cdb9:24e9 with SMTP id qa10-20020a056871e70a00b00218cdb924e9mr11136216oac.48.1707789472944;
        Mon, 12 Feb 2024 17:57:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:2896:b0:21a:10a9:7a91 with SMTP id
 gy22-20020a056870289600b0021a10a97a91ls5802158oab.0.-pod-prod-04-us; Mon, 12
 Feb 2024 17:57:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVm2GwjRBMMr/Q25+kAChb5jF+2F5CMOHYDNgYQs0ct+2Pu5Nuvt2u8jR3vWyuwnLx2hjsi1LrCu+pQ5Ss8KKisCI5bXVARFTkHv3U=
X-Received: by 2002:a05:6870:e256:b0:219:570f:31ca with SMTP id d22-20020a056870e25600b00219570f31camr9548518oac.9.1707789471359;
        Mon, 12 Feb 2024 17:57:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707789471; cv=none;
        d=google.com; s=arc-20160816;
        b=h6XEobchLDYvRjzwPOd7KBH5hWPK+w+dxDagLQnSE/EZ5Oko2TefZzXnS1KfQ8zuvd
         ephZ5NgKjFSbzSzzEsP2Lbj6WazPq31MLLCNs8TV/J6SDJiQ06heW8VrnsZu+hbQJhsC
         eiwPxusfPxuw41eDrhcDjeYRWRY24XPUTkEi4F6NOjWahs6XIvBseCmGd83/eapcaM0m
         vg4akSa2ua/81Y0tM0+qRqvA0gsNp3QTTyAZa8V6uVLXc1Uu2pLHYwQ0k17koSkANr3z
         weYH5J1li8eiMmi6aWIVa2sg9sx6FycoIJUCZYeId31CeJUhAfA41gzHSE+V3f29oMj6
         GYsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HNm0IOa9Q/cPbgW7SJ+Tu5MjfZLGw2RzEpHqIWyVsGI=;
        fh=SEtUKQZwBgaQ9CS+cY5D1+PzzlWGH83rmgJe3EmhvDs=;
        b=E73rjLhKYiH31zgHdzjoUvCTybVc3QdLD46yzd5IrtjgS8aKjoTI4IiBmCyyqPloCI
         8+0AXbEyQ0dp1/ph4au3kq2e2q3oXLlXgTJJ+070sc5Pvd0KBQZ6PFkMckJkxnFmlPSb
         XYMd1T2Tx0YpiY3tRY6R9vyqT9RVpUqW6rhbfAFLM77wt6Jj92FX12Ej1mSpK2RSIdpa
         fHibQAnvNWLlfZNdEsgxO56D+wkzP8/hBgXBj+i9jqAK52X+2VB56JGNRe7CVLUWSq1I
         quwqCZAudcT7JLswlUUXfutGUINBrNUai3MWbxv4Btd3vucZZc6cII+1f2J2EQaa7AqM
         hxnA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=hvH5nxM1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
X-Forwarded-Encrypted: i=1; AJvYcCVmV0JkxVNY2xpMpE3GNQ+j+MW6feMmOH4MMY0TjU3KkQlRNM4fL8S4zQ8Z63I7Lfid3xCYZdQdR7W9nNKhNECuCmRdjXKIwSTSoLQ=
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id yn6-20020a05687c014600b0021a31c0cc15si617618oab.2.2024.02.12.17.57.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Feb 2024 17:57:51 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 41D1hvs4017458;
	Tue, 13 Feb 2024 01:57:50 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3w7xqv014d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Feb 2024 01:57:50 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 41D0DfsL024614;
	Tue, 13 Feb 2024 01:57:50 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3w5ykcw3ah-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Feb 2024 01:57:49 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 41D1vm1j022232;
	Tue, 13 Feb 2024 01:57:49 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 3w5ykcw3a9-2;
	Tue, 13 Feb 2024 01:57:49 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Hannes Reinecke <hare@suse.de>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie <michael.christie@oracle.com>,
        "Ricardo B. Marliere" <ricardo@marliere.net>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        open-iscsi@googlegroups.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/3] drivers: scsi: struct bus_type cleanup
Date: Mon, 12 Feb 2024 20:57:42 -0500
Message-ID: <170778686840.2103627.12956797195697757629.b4-ty@oracle.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20240203-bus_cleanup-scsi-v1-0-6f552fb24f71@marliere.net>
References: <20240203-bus_cleanup-scsi-v1-0-6f552fb24f71@marliere.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-12_20,2024-02-12_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0
 mlxlogscore=763 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402130011
X-Proofpoint-ORIG-GUID: J34ByVUJ0oSxCl4qnH3YNwWs81QQ4h9x
X-Proofpoint-GUID: J34ByVUJ0oSxCl4qnH3YNwWs81QQ4h9x
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=hvH5nxM1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Sat, 03 Feb 2024 15:38:59 -0300, Ricardo B. Marliere wrote:

> This series is part of an effort to cleanup the users of the driver
> core, as can be seen in many recent patches authored by Greg across the
> tree (e.g. [1]). Specifically, this series is part of the task of
> splitting one of his TODOs [2].
> 

Applied to 6.9/scsi-queue, thanks!

[1/3] scsi: fcoe: make fcoe_bus_type const
      https://git.kernel.org/mkp/scsi/c/4dbde797b946
[2/3] scsi: iscsi: make iscsi_flashnode_bus const
      https://git.kernel.org/mkp/scsi/c/824ec98b1b55
[3/3] scsi: scsi_debug: make pseudo_lld_bus const
      https://git.kernel.org/mkp/scsi/c/ac0dd0f33adb

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/170778686840.2103627.12956797195697757629.b4-ty%40oracle.com.
