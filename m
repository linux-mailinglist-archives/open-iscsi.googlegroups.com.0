Return-Path: <open-iscsi+bncBDVIJONZ3YDRBT652S6QMGQEU5PWYMY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 5661DA3AE81
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Feb 2025 02:07:31 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id d75a77b69052e-47200b35a23sf7570901cf.0
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Feb 2025 17:07:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1739927250; cv=pass;
        d=google.com; s=arc-20240605;
        b=f8kf0uZjPq8ZfXjLGlmool7/ByqsNFiSMavjxBrz423RLgtv4yWuox1uJvuHne8V8Q
         AmVXKSDQjFg0N6i6EJAh1Qh9jvs6+TD11KKsFbXJPBd+IDZPR/D5J9DIW9rUThSG7FKq
         WgmC9zzjd2yo+OhyTFQdgf7mB0mdcy7W1YvxW6E7CZG5chOwQ3VdKXCCU+ZkQ03gt8W2
         /JgYm/4dVFghgYD+RUBVUDUa2l3jmnSLzE1V3oZQE7tKTPLYwJ+ajfvFhI1SxRtk0pFg
         LoLhx9ZzkeXcjx3sL60ZPbyJ+oePoSTDpgZznKyxB7e0Er8eNdlrRZGdkIaCq3lQIVOC
         q6Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=bbE4CQQAqh1lVc8CiiYzeLQGMWPoXeq1VYFdMRjEGUY=;
        fh=3/bhrkE7z8ufWd9UytBQHmv/sIcWQyjNDvAjLFhtCX8=;
        b=foZoRo246igcemF/90uspj+Zh78ZTrcyCQC2Pz70qMNOl49s94Bptga4drhOJtw2LS
         FeRbJH9Uz/VqTVJjxAY6C0GPOpOzWYwmXoC1Eus+ViaurNSfE+yX9ZMmqmY1FJTebYoP
         52U0Qab+WtYUzFIxArG4OUnKkbtPKHbu1WNL4UsgWKvOkUuqln6B3bybbZoP5iXpeLSl
         G2obs3TcM2uHwLoIxkEZxqlIOpvJnwSz42tZl5/FNpFEI29l33eWV8VSq8sq+9i8QwJN
         +PNt5C8k+GAcCqdtyba4pxYEyoIQS6XYBh2NZ27ONVhGlrd7qwbblbFM+Y12YbqCo33P
         VtWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=NJtVjQ1j;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1739927250; x=1740532050; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bbE4CQQAqh1lVc8CiiYzeLQGMWPoXeq1VYFdMRjEGUY=;
        b=tz21Kz0+jRjat2KcjtmGy9xcWKmUfD0yuJpItA8hb5Fcgu4uL3mee+ac6XZPQTMgyo
         uo/VhXf4D4mb+187dPDPxPDpS3lfbRGv07w9E+iXTw1YAqRtf2X1MyqZRSleORkv1yxc
         dfN4Kba61QsiBNbc6dt+Z5sZO4apmhqQA8ecq8AR4e4goAOrOGZ/fReH5Zq2nCQL49iA
         uXsTN3u/ajUl0UsjMGxgh4Q0dVzldn4I/XvKsTr9CeO3km9CDDy5CROVuYxSxRxgCRmp
         XGYQPM09glJE31c0cCoRvV2VNCWzf2BCbIitnG2zE8RIPhU2ty8dE0a3nkpJ9q81MJIH
         WdDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739927250; x=1740532050;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bbE4CQQAqh1lVc8CiiYzeLQGMWPoXeq1VYFdMRjEGUY=;
        b=wYp5hDSLBuD+lI0v9CV64NgXZ0YY1wG+myeeQCCqtWbRxZ/WhAPDyGLUmxudacktRx
         G1qcvliwYXGCq0LDtgIz5i+YtmFDSOpgNv8y5SWB8n9yFpn0Hg40GTINyAbFt+UtHM5a
         B+9QN2d7j03yjwjNEMCX3EudTy5LDJ1ss92QYV/G1I4z4V5rmM2X/YPmYpNfxsKEK1ux
         Ht4jFwcRbCqeEexAM+C4mfLbmD+wBwM2R7ptoHPgH9dIlw3kHVyYvxSX8M/Y3sbYIBPZ
         G/ixENh4h/iczO9xKUftBFJDV26FOUBG8I3Zxpn8ckYK4zt4z3wFDWCjVO/sjSg436eq
         uVGA==
X-Forwarded-Encrypted: i=2; AJvYcCX9UzZSia9RfNAyh5fDTM9Ka7n9Oi4s95k34EKS33Q+h37Z4Om3wUtEMWUPRngM3aOsc6Z6Jg==@lfdr.de
X-Gm-Message-State: AOJu0YxlbKZTITTWmVD6Ue+XBnSducugZoRwe9yoM4gRu11l7W3HLo9q
	Ncs71Ue5xhQcD9CcVz52Dhx03n83O+lE6qSAye4My7Vj5BpGGEki
X-Google-Smtp-Source: AGHT+IEhkOq2MO2diF1XYHQOZtk+E0ekAwnHRu6a2KV6NNFqpl+s1gcbkys54Z+rLGaCc+T/gV/4cA==
X-Received: by 2002:ac8:7f51:0:b0:46e:2d0b:e1bf with SMTP id d75a77b69052e-472080d0e88mr29888291cf.11.1739927249894;
        Tue, 18 Feb 2025 17:07:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com; h=Adn5yVEoRd5iuslHxU4IayXQL1be4CX5B2vVfiAts3V6jFY/4Q==
Received: by 2002:ac8:57c1:0:b0:471:b736:6cc1 with SMTP id d75a77b69052e-472080edfbals13297901cf.1.-pod-prod-00-us;
 Tue, 18 Feb 2025 17:07:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXYhY21fBArBfpAI9IZsq1Hpfy5nJ2lQATLm/cm3+uCf3HvboPPgDlbf2OyhKKbrTrccfT+8dYQKklH@googlegroups.com
X-Received: by 2002:a05:622a:16:b0:471:9e02:365e with SMTP id d75a77b69052e-472080b523dmr27389261cf.8.1739927246730;
        Tue, 18 Feb 2025 17:07:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1739927246; cv=none;
        d=google.com; s=arc-20240605;
        b=kyb7TuKO4BdgvfxlSoNgHBK+pNgRbFNAXgSFDqauZT4QutMNacDgLOJ0r8Yo6b4/1j
         UbrBiNGeA3Q0RT2h4UiHxw7NFMiDWQGK7iMBWtiY7DaFfDWW4is8EuPqdQAWUIT6YejL
         W6WsweA2CwCKCrKvERDy3uOk08n39IMGxeBkuXO0LbwjXDRtoZmWWhzfcOfKciEgWMu5
         o3zAGDHgPTsQ36AP5HIiI1AFKSom/X+Aq6KxEEBAqKS3/qlTZwiPDFX7IwNeKSDtHr3J
         w9WdmJaBMS0bxdA2psmUw21UVCpU+ybbGQKcopaFbkCcY61VDNhWEaGMT7Ixxj+qPDnb
         GW9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mqBZIya0Zo9bV0vIxDWGC8d3N0v62vUQUUrJ7AutH7I=;
        fh=KzVKXY+FJUnj/O0pguPsW7kS7WilNbhwRTviKTqGGho=;
        b=NwVBYx88FaufZrXmRboHaPnFyAdThV9Ef33er4xf0f5qMMufCAYNXzjXFNXpmXzP5z
         fQz7Y5giV4/rc1qRfGDjFYXbmD17PAWdyjqPA42RRpBCkiXPMl0njeG4Pvz5i2XpSCE/
         e2D2vNb7DRTay/9kujt43IJ9pLeGMKUdzv9/sbArT091rT/VpDJ20sUwhCn68csd4Ub0
         RhhREl+FV6sIrC4Ovx7fCjw4c/idnvBH8UgXos/ktBrc3YFAVc0MYSiTAm9KLTCPEyI8
         zr6uUrMVjMYIGlxbkcu1AbG9U2kfePu1X/LVyA70nYkx0aJGJ2sYwoOHQwECF3GTFiSF
         vZbg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=NJtVjQ1j;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id d75a77b69052e-471efafe83fsi2277331cf.0.2025.02.18.17.07.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2025 17:07:26 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51IMgfQM007528;
	Wed, 19 Feb 2025 01:07:25 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00ngkp0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Feb 2025 01:07:25 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 51J0DSMV002247;
	Wed, 19 Feb 2025 01:07:24 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 44w0tk1rrt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Feb 2025 01:07:23 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 51J17KeT000669;
	Wed, 19 Feb 2025 01:07:23 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 44w0tk1rq5-6;
	Wed, 19 Feb 2025 01:07:23 +0000
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie <michael.christie@oracle.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        Eric Biggers <ebiggers@kernel.org>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH] scsi: iscsi_tcp: switch to using the crc32c library
Date: Tue, 18 Feb 2025 20:06:54 -0500
Message-ID: <173992713070.526057.6348295717628038082.b4-ty@oracle.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250207041724.70733-1-ebiggers@kernel.org>
References: <20250207041724.70733-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-18_11,2025-02-18_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0 mlxlogscore=853
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2502190006
X-Proofpoint-GUID: UwujlG0Jhz3eK6aOGlgvsNPyhvxSx66_
X-Proofpoint-ORIG-GUID: UwujlG0Jhz3eK6aOGlgvsNPyhvxSx66_
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=NJtVjQ1j;
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

On Thu, 06 Feb 2025 20:17:24 -0800, Eric Biggers wrote:

> Now that the crc32c() library function directly takes advantage of
> architecture-specific optimizations, it is unnecessary to go through the
> crypto API.  Just use crc32c().  This is much simpler, and it improves
> performance due to eliminating the crypto API overhead.
> 
> 

Applied to 6.15/scsi-queue, thanks!

[1/1] scsi: iscsi_tcp: switch to using the crc32c library
      https://git.kernel.org/mkp/scsi/c/92186c1455a2

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/173992713070.526057.6348295717628038082.b4-ty%40oracle.com.
