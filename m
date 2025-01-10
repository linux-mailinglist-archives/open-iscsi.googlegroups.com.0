Return-Path: <open-iscsi+bncBDVIJONZ3YDRBMM4Q26AMGQEGXM54BY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id C7991A09CEC
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2025 22:16:37 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id d75a77b69052e-467bbc77b05sf48144431cf.0
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2025 13:16:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736543796; cv=pass;
        d=google.com; s=arc-20240605;
        b=AEOpA2n9O/GeJci6QUPWBNmxjmQ/1BOJQ5ekWdomjJlXkQU/H5tKYM5b+AxJl/rS+6
         +JjXyNbNHW2UhSLLtI9QsBhPBcGx6zyyyUrOtHCTQeymS5ITFeOxpaE7P2aHet1L8BHw
         UcI+DKROT/aoz4eWsQIM4z8jwa6uuDaZ4QI0NMqdqRE1pHFe1/Q3I110PoAzpmVD9S/+
         eIGTcGYzr1YWV3i5H7WjrRi8F8MSyLhBztjArPyWE2YsXmtn06EMGCHcbMfyg3kUUoqp
         U7OS3GemRF/rwFZ0qhU7rJZeggD6jjiYCBLvlNnsaxgtwub3n4oFv4uKAYQ3ewlj3DCa
         BZbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=UoqmjlrBPjBlXKAqB5syezmxa1Q7X5MVmra8y+odN9I=;
        fh=F4m35mNgshDwTw7OTaLkiP4KEKqSYgoWQTHqcO/yH4Y=;
        b=ipTnGHR08yskrVJdYweJnSlLyffe1pj/LvGihKUphFSwnQLHSlMkyfu9X60HKSLsTc
         PQ87pr7nPnEVbIUbh8yrHtnfGNFKKsQH1Sxp5+bZ0BzJFrMEVfckduu9me3cPedesvmf
         jwNdRbtmTMmFhtIcdzwwa0EbjmpwoofZbUXx6RMNneyqilLukKDkNHEKm29KoE+tsIxL
         hceT5v4vYpsz2TddHdpenfZWaJvfOF+kNW/K/oo6sD1T+eQdnnuGUOjowWa/+yNmIdyk
         rtUCDgOFUy+iGAS4F/P03aJxhTB3vrNdF9Gh6LsyXtIfVFvG+wZSHlfvTSvkeDX+bYvR
         zu7g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=LuezBWnK;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1736543796; x=1737148596; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UoqmjlrBPjBlXKAqB5syezmxa1Q7X5MVmra8y+odN9I=;
        b=emyfQlqxGJAYy9UKoLspFyR/UrrG6m9qZ6wdu/LEo6vb/wN65K7+vYXJfC6bSLBeY1
         7ItOGX1y1h0p1V9ZeKtk+iDIz9ehLpGpS8C1lFbk/7eu96sKG8O5zs6nM0Cmbdwtj2Dy
         MvIZFvx+QKFfGChNlr2ukqxQ5LME0A4nRjhwVJzybbyXc9pAYG7+uHoCcO7UXnlqAO19
         XtW7lK0sX/1Ybdb1UdwiKifrjwR5SimyqGNFpf+Hvlw1c1s1/dI8B0eZ3yIUbEEAA74P
         fTtV+a0t902gEdHqlBacQ5a0/SL0ePVZ1Chs+kI27EUDvkZTIP3wfkO7JYB52Kez8YUq
         ZwBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736543796; x=1737148596;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UoqmjlrBPjBlXKAqB5syezmxa1Q7X5MVmra8y+odN9I=;
        b=ZOoiDUF0aWM0ak6Tske5dk3FsygWDLRrcyXWf5geeTot9UoFPc+iE+xLiWDjAxtp3C
         MIlSkkrF9irsqBinmSaMNBVJJdVfJ8qIqCFx6+0shc06OwNXyrgJxlYDKrutqLhMF61W
         gURMshc91h5qMZfNd5kDfkCUNLPBnXGPlRtIw+2TGzBfMbFhY4C1+0PV7c+xufqbmPJR
         c5WmFVBRUcNcZ85iwAT7oQU+dyIppyBGoWL3IB8VEiu/GLh80SY5Z5K2NFr4uMN4bJIo
         tSmgG80asDZaPVyKVAdrtOzrbyPxNjqjxSNtkZeLa/wAGsp6vmrG/TwRtwB/GsKxY/rO
         dPqw==
X-Forwarded-Encrypted: i=2; AJvYcCX/AxFBMh/Y78EHKCJjEBqqDsx7ExaKg7JaEUTNQS4F0GrAITejmeKb/uIvpwMXwu4fofzZOg==@lfdr.de
X-Gm-Message-State: AOJu0YxnZExBe19rEdCyMyzcYUjjwsrCoI4+2TJxuzuF3tzbBJsUzvVX
	CAkk9HH5qTeeBgcbUFyq1tWMC7VeGL9ItIKPtpTAeR/gE1I9dkW8
X-Google-Smtp-Source: AGHT+IFxQirrAI/VV96dAxDj7zqHpgRR/UnVOATeS4mY4SZHiUJ2lxyA6hPPLB0aYxr1/fOpqpOP0g==
X-Received: by 2002:a05:622a:1a19:b0:467:7fbf:d124 with SMTP id d75a77b69052e-46c70fc1479mr193143821cf.5.1736543796311;
        Fri, 10 Jan 2025 13:16:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:2e46:b0:6d9:832:c74c with SMTP id
 6a1803df08f44-6dfa37a3953ls44410746d6.1.-pod-prod-03-us; Fri, 10 Jan 2025
 13:16:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWC8fk2jySJQrIWWT5VjVj+zmWcid0BdGz6GmeI4tm8iOVK8UTCaYMUv1Aa+E+D3ihh/4MtQZD/vpOe@googlegroups.com
X-Received: by 2002:a05:6122:8f82:b0:51b:8949:c996 with SMTP id 71dfb90a1353d-51c6c48f340mr11427841e0c.9.1736543792229;
        Fri, 10 Jan 2025 13:16:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736543792; cv=none;
        d=google.com; s=arc-20240605;
        b=KKAhw+B8QM8yzoSYvX3U9QpxAXTD3SOJIIOVOv2FngvUvlg5xlzE9rsYhVpXpkaS6G
         krXao68RiUYeJM6U/pdGaGvznw4/nKGbKxntS1PFgFiTX+zATMdtD8/e/vUld7/LUaYe
         1IAnzwUyoYd5jWUbcPSn/6D3RKHOv9xYSy56W5prqdeTkCuLJBsuAgFWWdcbqSkEPBDn
         U6KipZMe5lDg5CKMYMfso1gfaG6FtbkpkYTBlDTfbj3CoS/6n9ftFfsJ6tB0IqMNlyxG
         ipqZG5N/neNqtkasvV9EfHBrAujlv7sXe4chSeMJItCnD/Nt7BjNaqcYNr9KEswRxshG
         tZqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PcrKpWHQutbYtzHy473GU8EtYOWc7ALxVzHc2/8Eu0c=;
        fh=FUXneYYFWhEhM0yB3RUH7GmYwS4HV7Lkp0jHed9D14A=;
        b=EQzTbuGF7+6qR+k7b3Z7IXqAWeEpl0tevHx1xqrdzoX/9PSYb7W6tlqNOIVmuDq5fr
         bRBa1xCFgS4+5RRYT0woIQ4zQi154UFmZkfqdzGsO0z5T0tOQABUosojXNgnl4tQPJWx
         KSh1Oqqe7rauhX1gsVl7BcKqAoDOkiz4qhDo7IcTLcuSo2UeGD2TrLDzjikI7p8qJCWT
         6IEunvYuu0xkma+Qh0xk7Aie6/I+O+z0hKJZmJ2418JvDJEe4mMK3di+Pz3m/K5L/gBl
         r+hc9Pmx50n/nhY1AC670rTFzzMWiGt/+NBg8aYmef8JFvlFHwhf0LMUYknn3xj/sabJ
         mI0Q==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=LuezBWnK;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id 71dfb90a1353d-51c7f996d5bsi149668e0c.0.2025.01.10.13.16.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 13:16:32 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50ALBofw029012;
	Fri, 10 Jan 2025 21:16:30 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43xuk0c381-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 21:16:30 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 50AKvM8U019872;
	Fri, 10 Jan 2025 21:16:16 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 43xueka8rd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 21:16:16 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 50ALGFfp021917;
	Fri, 10 Jan 2025 21:16:15 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 43xueka8r5-1;
	Fri, 10 Jan 2025 21:16:15 +0000
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
To: michael.christie@oracle.com, Xiang Zhang <hawkxiang.cpp@gmail.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        open-iscsi@googlegroups.com
Subject: Re: [PATCH v3] scsi: iscsi: Fix redundant response for ISCSI_UEVENT_GET_HOST_STATS request
Date: Fri, 10 Jan 2025 16:15:48 -0500
Message-ID: <173654052312.609313.3667426682604028029.b4-ty@oracle.com>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20250107022432.65390-1-hawkxiang.cpp@gmail.com>
References: <d9be3663-f6f2-4a1c-bd88-2a3978f92bb1@oracle.com> <20250107022432.65390-1-hawkxiang.cpp@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_09,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501100164
X-Proofpoint-ORIG-GUID: 8tjU2TWDPjTiTb6sziGKMF4RIyGFh0wU
X-Proofpoint-GUID: 8tjU2TWDPjTiTb6sziGKMF4RIyGFh0wU
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=LuezBWnK;
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

On Tue, 07 Jan 2025 10:24:31 +0800, Xiang Zhang wrote:

> The ISCSI_UEVENT_GET_HOST_STATS request is already replied to
> iscsid in iscsi_get_host_stats. This fix ensures
> that redundant responses are skipped in iscsi_if_rx.
> - On success: send reply and stats from iscsi_get_host_stats()
>   within if_recv_msg().
> - On error: fall through.
> 
> [...]

Applied to 6.13/scsi-fixes, thanks!

[1/1] scsi: iscsi: Fix redundant response for ISCSI_UEVENT_GET_HOST_STATS request
      https://git.kernel.org/mkp/scsi/c/63ca02221cc5

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/173654052312.609313.3667426682604028029.b4-ty%40oracle.com.
