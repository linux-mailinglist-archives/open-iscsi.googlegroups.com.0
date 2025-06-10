Return-Path: <open-iscsi+bncBDVIJONZ3YDRBW5GT3BAMGQE754POWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 32840AD2BB9
	for <lists+open-iscsi@lfdr.de>; Tue, 10 Jun 2025 04:07:29 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 3f1490d57ef6-e812e1573ecsf5317174276.2
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Jun 2025 19:07:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1749521246; cv=pass;
        d=google.com; s=arc-20240605;
        b=E+0PTZn42R7EPnQPx2fzI+cN9MpaSmzxmevpteLhAz5hihMETPI1m8SPF/00uktATJ
         IAmJeZVUKsUtg9xDmVHHWv4s8LTGWmAqHzQivE0i4xRw/uwrM+wIJ36zIoi4aJiFGwJ/
         DjtUznO6bsaLGn3kWpOR+6eyrKtitpUgwu+sJFgTrzrkFrmbKSxPaVpzsupVuDQmkRJs
         q6ExUhavkSOsCmjBsunBLMBTXEcaYBrHMKHhuWrgrrBYtgyO/xUzbhn7Nk874FOntPJL
         QVb4ef6N444IZeBVc18s1b0ufxRGw3UsF+fBQtRN7tLmBuRFx8lWEZMBCUhheepJdw0+
         3baw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=jCWmcFqW75QJ42Os6ex978B5NgP2d3ushbFKPznZgnk=;
        fh=2tH403fBzNpL//5FY59JISfKohEnW66aEqwLRO+1oUc=;
        b=QxCpaeG13i8CkgQe673DJaqU91huczjLcmJjFnbPBt32rRU8MjXk3FRA6AmQ74MG2B
         3+wByJxSgZtt4t5MIjLetpTXH8ALcaWBVrqNzUb2mtZivUEYpqRTOyIRKc96bGZruXWr
         iLZiTHYGf7o9PbH8XcybEeVw12hAEphwNnVKb3PNfKJllq/a/8TV2tDkXWjFyHjRYLMx
         nyK4B3RthvgDAloAHGd9aYNbNMMuhb9XRa5o59xC+A86y640RKO/I5oA9q4e27xAQHXK
         KcJP1XgpbhmKafGUDct40yGfOVuEAos+kYBfA7y+0OTSdcPDQtx/jrDKNWvULGEDvela
         +yEw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=IUmJFtM1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1749521246; x=1750126046; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jCWmcFqW75QJ42Os6ex978B5NgP2d3ushbFKPznZgnk=;
        b=BgYbwkUdunWquQJ+5+YJUbMkwVwKbiNBT1zua85lwYa4cTfuC7bAaGO8otdQuTz2Yo
         cX3CzMMgGUvZbMv6DYKQoiDklViT8yxhtcsEiC7yA/jBUYFI+LVHHnEX6zZMUgyLLzUf
         lmRKearuTJN7ksfsFTHfgDhBb4p8omXX99y/pDWmfjNZ28wVLtltoxLrbIryAtdSCWOz
         YNkaFg2pmMbWUwg6BWfLdTGSZmEjOXMJeT70NQWiMLB0SJoN8CNh8j+IQYBLcO6p2wlW
         2ILGbp8YET/ti/D+MD9CWKekWoYvmXiUBOcO6BFVnvHvKeZgR9CK3ifEdxrI1d7wo2r/
         x2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749521246; x=1750126046;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jCWmcFqW75QJ42Os6ex978B5NgP2d3ushbFKPznZgnk=;
        b=MJfF0zkUl1sl1RasSuFmqEjHSxsw9zLnEXjjeyLzCi8XNSCu21U9q65FoWHpta66pY
         Vj8ILQK4AgAjwd2E4W6dnRp/WnRIEWQG9dk5IN+nX6rxNnlT1NnhMyUFriaJyBbEH/9f
         hccHmbjNrccnhtIY+BRVDg31butlviShgAtg42EzDJSsIlXUCcIPPgNDMjE4FvYsgtQw
         Kw8TajtLvk1GRbDMHl7WNbrgfAqSDQGXNdhfo1aBcmat7VA/qkzCdyv7H+BRZflTakKr
         POJ8vHHetxMLtmEc9N+WdsUhf9FDN2tJubWOyvOD+Y6zd3J82EKNaYib5yI/WvvSBBBh
         +HEQ==
X-Forwarded-Encrypted: i=2; AJvYcCV3PaAO+tRRVoi2JxEYgR+3tpf4Tgqx1DATLzHdJIcRB0bZ4UwhkkXxhHaOAGe8TlbsNBMNPA==@lfdr.de
X-Gm-Message-State: AOJu0YyeFUeb+zxHvdgmAWU/t17uYDXDAqCL15lLy4rWcEmaNdgfQ5CN
	lA1/cSujcm4RBopyVV8NZayW4RhqpUvUbwRgPp4fbazn2EN7GncA00QS
X-Google-Smtp-Source: AGHT+IH+PWpr/64x9hgbhuFUYMVsw1wTz37Q+b112B3RAnIdPQVuWKrBeWTEdyy0uRsgjKzfSjvEqw==
X-Received: by 2002:a05:6902:1142:b0:e7f:6fcb:a069 with SMTP id 3f1490d57ef6-e81a227c99emr18756096276.6.1749521246173;
        Mon, 09 Jun 2025 19:07:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZe20tN0DYAZfauie2Bmu3SyXFuidLIoSqh4f51n5dLrdw==
Received: by 2002:a25:b288:0:b0:e7d:5a87:b47b with SMTP id 3f1490d57ef6-e818881ef12ls4409228276.0.-pod-prod-01-us;
 Mon, 09 Jun 2025 19:07:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWEEgGJUB9MQ0GDlJLJNRvFmPuwdCQ3fr1UVKqsyyV+pPVrfP9h6iAO1Z7hO+90gIbzRIRJU/fqTAPU@googlegroups.com
X-Received: by 2002:a05:6902:12ca:b0:e81:868c:5b with SMTP id 3f1490d57ef6-e81a233bb0bmr19686212276.31.1749521242218;
        Mon, 09 Jun 2025 19:07:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1749521242; cv=none;
        d=google.com; s=arc-20240605;
        b=eIIkEY4VC5nsQZKXJrNFR/hsaeehtCoODKZsQOmRpIg3x7Q69V9KB6bsNBJ9sq6zwI
         Ge00x9rpX7lBoMdQHxJcz6YwQL0WqMUmIOiPZaQ1u3tvOI5H8yWqvKhVJlna5AgvBnVs
         si04fET16If5ihZ806DgQJ1e3R5KpN5YpT/QZKl3S1aVfTj12i+jarSCtCePKCjctbPA
         H6BP1FfDlV3Hrwt40vLShUirlSwQpsSLlzX8Zv8uKoNSQnnH3USTzFAGeFrZqYr8K0tx
         JsBqm7q52qy1NhFeSu1tUiiSM63jxrSKqFqAXD4w8OfO/xJJr6L9yzrIPFloNQLJRMim
         uPAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Jm4iZhusmRIAIRK6bbhztOQOKbIJTVCtBKJZMx420iM=;
        fh=F8qwu/PKqAdZp/j9D1fHpibIf91uV2sX+MWmuld/Vr8=;
        b=A5oLIYHU3KDk2SjDkA+hdnG+gLjXBQft6UQhJ+CbSjwoDyFIBplqklLkTmNRVSky8x
         WbIQZ3X6xxVTnUOhY55Do8RKAUZkCNstaXid44x3VDFxMTtFI+c8hUXuhXMfXufQwCQx
         LMTyjwcklVCzpB/O8QQPD3pN8N2wD9b4xf/7rj5I0MXU9h6p1+vu8h2dZ9ebOeAubrNs
         8Ww5t4vJHmhT5YD+h0cJ/l/ju6wVsOLk/uAOqGoYrGbUOXmBXmU/aTR9rLRbJ7bnqaRu
         lUiiNgYl8DFyeglaFWsbhaDW6Q/TyLsA9GPADDZalg14gWd8//d7jzn03CxUE9xOFU5y
         RsZA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2025-04-25 header.b=IUmJFtM1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id 3f1490d57ef6-e81a4086280si462028276.2.2025.06.09.19.07.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Jun 2025 19:07:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 559FcrTI017589;
	Tue, 10 Jun 2025 02:07:22 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 474c74u9mu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Jun 2025 02:07:21 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 55A1A7eb031370;
	Tue, 10 Jun 2025 02:07:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 474bv84jff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Jun 2025 02:07:20 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55A27Kqu016523;
	Tue, 10 Jun 2025 02:07:20 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 474bv84jet-1;
	Tue, 10 Jun 2025 02:07:20 +0000
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
To: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com,
        James.Bottomley@HansenPartnership.com, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-kernel@vger.kernel.org, darren.kenny@oracle.com
Subject: Re: [PATCH] scsi: iscsi: fix incorrect error path labels for flashnode operations
Date: Mon,  9 Jun 2025 22:06:45 -0400
Message-ID: <174951883633.1141801.4572248277182090285.b4-ty@oracle.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250530193012.3312911-1-alok.a.tiwari@oracle.com>
References: <20250530193012.3312911-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_01,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 suspectscore=0
 phishscore=0 malwarescore=0 mlxlogscore=932 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506100014
X-Authority-Analysis: v=2.4 cv=LIpmQIW9 c=1 sm=1 tr=0 ts=68479359 cx=c_pps a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=ZFjwF5Gz_3r7dmuddG4A:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: _7ALXlVP53ua1-rp-P5BFxVJoc9viP7i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDAxNCBTYWx0ZWRfXznH9xBxmX5Vg W/+c0sx4YQOgQwQWeVUz7aCYRY2JhGpY64C+fe0H7pPDW3xyLUbTF6/Bxqe24h4nzTBbyDZEdu1 J/Eq6lHF90K3g4vnTx66XWXuJkt2UevV03VgW3CCMCLWW3m/4EnqHl7rB4JG8vF1p4dIKxhjlaj
 nxAIdpYJaSNYyioat9G1ImqCrYvA01tpmpsj3gdjCAwrxOrcb2gpNx1S7+wnMxdg+O1Nnfpf9kl zxOx1nMCfKRLUAD7lAw2V7MQ1DxTgDruZkzCXlJOkmJaUwcaMJ2DavxCK2z+Hvw95NH5go5P+uv 8rkYSZR1WllltKMZgqQR4HrSv+Ss7JO+5FayKBTi84IN2zWKyn4IaYmJ1EhRIRXfK/SbzikyEX3
 nxKtRhY0hogBliUvbBRdfweKQmNUPWlgE5hkqlTK8ITeSr0cy/S+VRU2FVFLTVkfBg+1E2JY
X-Proofpoint-GUID: _7ALXlVP53ua1-rp-P5BFxVJoc9viP7i
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2025-04-25 header.b=IUmJFtM1;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Fri, 30 May 2025 12:29:35 -0700, Alok Tiwari wrote:

> Correct the error handling goto labels used when host lookup fails in
> various flashnode-related event handlers:
> - iscsi_new_flashnode()
> - iscsi_del_flashnode()
> - iscsi_login_flashnode()
> - iscsi_logout_flashnode()
> - iscsi_logout_flashnode_sid()
> 
> [...]

Applied to 6.16/scsi-fixes, thanks!

[1/1] scsi: iscsi: fix incorrect error path labels for flashnode operations
      https://git.kernel.org/mkp/scsi/c/9b17621366d2

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/174951883633.1141801.4572248277182090285.b4-ty%40oracle.com.
