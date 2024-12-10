Return-Path: <open-iscsi+bncBDVIJONZ3YDRBNGS325AMGQE5VTRI4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEF29EA529
	for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2024 03:36:42 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id 98e67ed59e1d1-2ef9864e006sf3140896a91.2
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Dec 2024 18:36:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733798201; cv=pass;
        d=google.com; s=arc-20240605;
        b=S85gX4GnPKeAQgzrJYFqJL9bZeWkaH4UlD4fPZCTLwOtmYqRDS9h284SXgCWm/cy8s
         4M5PuDP6MuU/dlXNsBJTjjIS5OgJ9QDwwmKb8YfsAylqA9Wrlz33z8RZm/lgqbrBkfmF
         PIqSEnjyMWIcmx3Ps4FQfPpKcYEf3XUAz7oMmmuUkTqovdOIngznOZVD4JiYTBlwYzaa
         WzTT2e6/9r6nBDrXf7PFKArYSPKHnhF7O6VaovutUFYipfqN9eABK7cs3C2UsyGRaT26
         x/Ofg6pV8GnOqTpgGDCZifaod/ou0jpzwwkE4Jm6t+7rxrVMYTEApmwzU9TcyS5Db3sO
         fKpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lRDq4+F9Z6PyIMIan/HCZd/w+mlEtRVg5AzMlevViS8=;
        fh=t0sUXshOwhcNsUgQxyXRDWPkU1p5m7NIqnHivCSrkB4=;
        b=EVTDJRycoqHlytuMTyyKTgT5dAjR5L8tTQcurkV0SeTMiovzWIh/TqQhBJgcQK//YJ
         D1WjWEfg5/SfNPsMw9SUaYQnK9m+5uXaFVqLMqQE53pTu3FVRAdu8EFIYT0LSBI4kk4q
         ynAR52pSy16fkq42Vv3i7WdrbAOOUNkQIPW3/Oc8PGWNPbflW8TEjwGFXPbUgQu8vend
         0S0jj4hV2siToipmGWjgOwo1HJhtt7ng25m/dhtDqjTh/fQrURH9RkF6cMWhHiCKcN4c
         DjU/CjDHg0STFd5Zd1D78v2Hzv1vWnXYhUFwt6Ad8E9rmYBzgUGgA51i+HrJ5JrbQ+9u
         +HWw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="UmLWR5/3";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733798201; x=1734403001; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lRDq4+F9Z6PyIMIan/HCZd/w+mlEtRVg5AzMlevViS8=;
        b=AIC0Z8i3ehOfyvFw6BJcyr3kOAvKvzfZWznJ1kWxuv6EO5DmFhzg8LSiA5LqmXFDdu
         se+OtnQSnMFXyq/d7abfbO12Bm3zszBN9kpjJZTZJWR65jgHj58NL+SqAUxIyzQ3DyAz
         08x3gN1QhhUcuGEpsmeUhs3xkgNAeCXMXnVjK7r5uBteI0R70NQ+APfXBWXQ0g/ZxAYQ
         54hxk1Wq4d2bF9j1WesVYHBmogYPkPViHOA/VQSklAjzDYFNaNv9mZXUOlhBmPiaE/V7
         akg58vTe8Yqbb0n4crzi5M7fqwW8n80TrcGQmxjRGituQheyJFZUMauQ7nJ/0LfLnj3p
         KjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733798201; x=1734403001;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lRDq4+F9Z6PyIMIan/HCZd/w+mlEtRVg5AzMlevViS8=;
        b=bVlXHSnNzXteOANvyAc1b3N6ISw68RnTh435Q5IOkul4ob/TYtvgZ1LcWHCGeJzegt
         evaff8Q2+LSeJSTYqRjJ3YDR8ArjFHwnyMksdnkTRR6oGGODkMsh5M5e+UlbmwGenD59
         2cfBuLNjQLuKh2bZt5KfDO+em24gLhtKnTmZRb7UITmEyYj8Gztkz5+kXhiT4iVd46dy
         Q2vQT8qw97k0LnXdiAZKwr6l/AXXSxQpKcAHqBTqsvdBPDbf/oYRTuJr0ynPkn/Dji4I
         iKYHAouKypBxMZDL7yulAou/R6RCQCV02TC7fpVoR8/XF3QjI6tr334GjKUQ94tusJmU
         nXfA==
X-Forwarded-Encrypted: i=2; AJvYcCXWD58qTLiSIpXBhDPIn+QeJZDNL9SukZCcWEbsv2uyUywxmN9x1s5Ger03toNz1oHpMuoLTA==@lfdr.de
X-Gm-Message-State: AOJu0YyASUjZ2AgwBHhPEjRI2qHKa3L8Rcl9dN/tkCvvAA8XS2VDTwzT
	CMWiHZxdPa1zMkntjoMlMuUkHbkzc67eJGEU3l1Ug+aKCxI2rP4g
X-Google-Smtp-Source: AGHT+IHy8fIlkz2OkBagTeUy4xOOwi/BUo2xqs+FEuJEn2qZ6PErnAP6ziv2mTtllnP6qdtD1okuCg==
X-Received: by 2002:a17:90b:4d06:b0:2ee:d18c:7d84 with SMTP id 98e67ed59e1d1-2efcf19399dmr4414133a91.20.1733798200762;
        Mon, 09 Dec 2024 18:36:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:8c8:b0:2ef:288a:b248 with SMTP id
 98e67ed59e1d1-2ef41ba1fc5ls4399799a91.2.-pod-prod-03-us; Mon, 09 Dec 2024
 18:36:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVy1AtQIO4TWn31exLcpQg34sftGp+CJc9L0OWteDPvnvt9vAcINT1zYDARdetSzQng8dsENKZj3ZdL@googlegroups.com
X-Received: by 2002:a17:90b:4b44:b0:2ea:bf1c:1e3a with SMTP id 98e67ed59e1d1-2efcf16975bmr5221539a91.12.1733798195216;
        Mon, 09 Dec 2024 18:36:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733798195; cv=none;
        d=google.com; s=arc-20240605;
        b=jV7DbVVmwKm8QO76lJaSEzClcs8VvQK/kFk94EPQdPXjE/NWHzEqOWuNsOyKeObBTU
         DFY0YGUk7VNFoB5n8foPIYXYrDzW5jIvshFWHvnU6atGacOFNmH5yo4To5xe6aqjKV2x
         xsgC5duFUjrzvFzj5kOYbBDEyk1iIhe27klzO5HUMGaGIPlwTTyGV7T1iRBPz5kn1SuJ
         46viGaUnZR66HCVvX4xYIieVZETZYMms6sRRLtL8sKcDThUmjLyzcZGoQk7EDccEiFl9
         HjzFqS5YV3dXgoF/+ey0m2wBC0LAobktz8U6I5sb2m3SjSeUznHfnL+6dA3um+slynEo
         DDZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kRATcHBz1uLl39r9mue2y5/++MSVY3TMpTapSyKPzzU=;
        fh=DNZSMupXYrLkf7foheldOQwvEgB7faKpaPicjXF90m8=;
        b=HCrni6pHqQyLgVzz42SGfMujQyej17nbQOko0PEypbr6HuFdYmjiflzRehb5CnR8Mi
         9KpUVEqFQbqUuvfhpZWGxIYNHNNg2fu0Q6RwAdQPeEALMlds0VfiyJYlNncZZnXhe/Sz
         kcnMvdGXXNwEHuLBurkwbnH3MBDYvrD5nVx/J7mHSDx8u8HFlYHjm0wLkfVXFChL2vTK
         aQZ3iasKHPlB9lmIabgQCGHuXmBrh8onmIT/Y9z/bzplLRRu5XKPYIze38nl7CrH6yD/
         w6K0ZEqhAyWm4p1+QagfBQvcDC1pxY2rCKOVL5CB+GqfsziaeU32p7SCsKWoBUulTvHN
         6lAw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="UmLWR5/3";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id 98e67ed59e1d1-2ef6df4af10si886968a91.0.2024.12.09.18.36.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2024 18:36:35 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BA1BuVs005416;
	Tue, 10 Dec 2024 02:36:23 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43cd9ams63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Dec 2024 02:36:23 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4BA0VQw8035101;
	Tue, 10 Dec 2024 02:36:22 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 43cctf7y80-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Dec 2024 02:36:21 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4BA2aIux010256;
	Tue, 10 Dec 2024 02:36:21 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 43cctf7y6u-8;
	Tue, 10 Dec 2024 02:36:21 +0000
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie <michael.christie@oracle.com>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        Thorsten Blum <thorsten.blum@linux.dev>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-hardening@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] scsi: Replace zero-length array with flexible array member
Date: Mon,  9 Dec 2024 21:35:39 -0500
Message-ID: <173379777406.2787035.5783892725479689291.b4-ty@oracle.com>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241110223323.42772-2-thorsten.blum@linux.dev>
References: <20241110223323.42772-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-09_22,2024-12-09_05,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=578 adultscore=0
 phishscore=0 malwarescore=0 suspectscore=0 spamscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412100017
X-Proofpoint-GUID: Ez0p7d2FzmCJsv1oSr3ppsVCTrnXYbOO
X-Proofpoint-ORIG-GUID: Ez0p7d2FzmCJsv1oSr3ppsVCTrnXYbOO
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b="UmLWR5/3";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
X-Original-From: "Martin K. Petersen" <martin.petersen@oracle.com>
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

On Sun, 10 Nov 2024 23:33:24 +0100, Thorsten Blum wrote:

> Replace the deprecated zero-length array with a modern flexible array
> member in the struct iscsi_bsg_host_vendor_reply.
> 
> 

Applied to 6.14/scsi-queue, thanks!

[1/1] scsi: Replace zero-length array with flexible array member
      https://git.kernel.org/mkp/scsi/c/cdb03e598750

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/173379777406.2787035.5783892725479689291.b4-ty%40oracle.com.
