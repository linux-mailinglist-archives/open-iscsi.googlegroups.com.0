Return-Path: <open-iscsi+bncBDVIJONZ3YDRB4M4Q26AMGQET2BYTWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D2FA09CF4
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2025 22:17:41 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id 006d021491bc7-5f6b65c90e1sf2213488eaf.1
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2025 13:17:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736543859; cv=pass;
        d=google.com; s=arc-20240605;
        b=Bb0UqMRgEj4q7eCCzCI4N66xjdgqxG+5IWEmOFIEEy5uA3yDcqGPzUvUAOHp8JIPkB
         U8R6fOfzgalwdxVf4QI3sXFOdikHkczTlLcJZxkEhERsQ/2xPIds0NPT4dFZyX8pzgL/
         L5fcuIBTIgtXU9fpbGr7p0hiS/iU/dG8PLY3+POH7Dr1wQwQn4z/2S4t6HWtB5MN/eq5
         mAyS4pi3D2rAbbizPDDZwWhyXz/kp2Zm+siURvpYGCLKD9PAlmnAcUur9FtQjC4lWlLP
         Mk+Ucb1hAOdl0HY6ePq9mor6qTopEPSFg8cYASkfoNHQ00CK0vJIP5TBKTnZfpDMAUaV
         s4Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=j/Cw6l4KuDVF+eEXJd7PrkM1t7jnBTbGAnCL6N4A3aU=;
        fh=pifpoxDrdbWqy4yAn44hDjGEasUuJPFZiEu7Ir2yvpU=;
        b=R4+YWXwmcP1mxikbJoMGwqlBPxa5Taplj/exSFL2+7/vxnn+HtTg/yXkEYeXo9ifmZ
         CxN0vtKKsDKiiu0dOZA99CuuPH+nDsRycGO5PnndnFdC/+CAhJANnMscTtgyxOkzRk0B
         bKQMROXjLNDPMw7iFF4THry9C57rgFpEq1kV3GH4R1KcuJORkyJGeOorYuMVo1XTg84w
         thXmRdJ0+P1y/buXBCwtcEDjXmvBqzBlm7vpUJ7LCRB88BQuZ0Y+Z3gyOTTqxpyytICY
         /MMLUUcOKrwbnhGot1fuqIgtSfx8BvCMkadeDA02I4dNal8eXI958UaBF/5NjLomoU9o
         9KMg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=M9awWApZ;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1736543859; x=1737148659; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j/Cw6l4KuDVF+eEXJd7PrkM1t7jnBTbGAnCL6N4A3aU=;
        b=HCSnpgM4uylBLIyiOwCyIQc1xDplMDwgNMxlBGlKlucI8Jpr3LaMrZpSjS2uakEmo8
         aj22fs4+tLj1GspM46cVCIGsYn/RKvO6XGuvF6SYIQ5bC/6izJx7ckZ/SFIFypaB4mKH
         vZnjJGnV0gp3gObe/b+lidDh3ORa35UobLfW4JZ1BraJiPNCFpKsTQUXjoOEht3xFtdz
         ik3PGZsntFKN2ao1pCXVblmOTbAxzWa3TEuKBxEvaL7iAbLf51AbZ7sSlQA8jT0OIvF2
         BskixgtEKyX+uxXOW7yyMgjHzzrS+MNw/G+HJhm+hxz+85C+k8HsH0R5bhpvfX4UbveK
         +wNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736543859; x=1737148659;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/Cw6l4KuDVF+eEXJd7PrkM1t7jnBTbGAnCL6N4A3aU=;
        b=LQmyIXIk8J+tW/7V2Vve7hy26ayjv+kW1yVbstKJRgSzJFi65iIebE9WKUxn9eB52e
         qLAGa4i9m1YtGujFaOuCJxFPfJExHuXAqYrUdQ19LIsxsME6DKESLkOl6qCXtnMVMgId
         rcDD8PniAk97OVSuD1aMacOvlHIV8HgmI14gozQaNza5ft6lXPLlKt8P2KeZYeJlc6aO
         feTQ5NqzxUaeTwU2eD5PAGKVx66X+SQ7lb1Upp3JnOPI0Uqf/MczPaU6qDTk0oH5OBjq
         7EIXe76Z2rX74bPTZusW8I3ghyZNBptl/MPe3ioS3Ha2omEqhpJCjfB7hO36tCnEzj4r
         sDJA==
X-Forwarded-Encrypted: i=2; AJvYcCUBZ7eH/H3RF8HCmPddKHEve3zzCcMd4aFPsw+k7oPADJ2a7d5CA7n7r+miRpHyuHoFyxZaiQ==@lfdr.de
X-Gm-Message-State: AOJu0YwpDnzFMrJqX+DI2xOG4+lsRVuWMzLSwo/ZEMdizycZmfOmojl+
	gRRY93d2gY992ea4GrlIDKDkRBGo0bGs98iznLwvLapiNTddppgC
X-Google-Smtp-Source: AGHT+IGXLFdaJGSGA/iuWSNq7dgf+/IIoNI152wG1D8mDrWrNTJu7CmUqZAouJnzHFdgNNkKSRBdiQ==
X-Received: by 2002:a05:6870:ce01:b0:29d:caa2:f0ef with SMTP id 586e51a60fabf-2ad8078db49mr4780048fac.6.1736543859651;
        Fri, 10 Jan 2025 13:17:39 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6871:6204:b0:29f:c765:d106 with SMTP id
 586e51a60fabf-2aa8a700d78ls1074275fac.1.-pod-prod-00-us; Fri, 10 Jan 2025
 13:17:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWNFFo8gPTFSfKD1lY11s/RKNzUnp2AL6HbMnbCBGzPv9G4LKTCX8IggYmkb70n8K2/+RZaxZGxnHU7@googlegroups.com
X-Received: by 2002:a05:6808:3945:b0:3e7:bd4e:5b98 with SMTP id 5614622812f47-3f038359e56mr3608667b6e.0.1736543856805;
        Fri, 10 Jan 2025 13:17:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736543856; cv=none;
        d=google.com; s=arc-20240605;
        b=jlGTXrZphOwlxo1CvILaZaZoEosE6SSqHpK+DGhhY8ntXd/Gc137XmSkJk+5nZP91z
         FgmQ/rAVFet9cL5pjuYZWDzptHYOjXsDn7Wepcpw2joRK/1ozwTeo/zCO2TwDLeK4orV
         TBWBux9fib2C+c0zYfFyn8+M5orWM5Vm8UgHShAgbouSlAprR+amDpp0dSl+Q7tksFMf
         X9+izMwGGMGPJYwoiUVNA5rEKZioMedu1nUUE1MYD/NtYsPxO9Ao3NyZb6O03HN+KQ0O
         keCW7Lz9++5YGgWm1CefR0VuTDCZSnT2Jwa5AA3UIU/V3OaX/og/9xKSiM0EuFFgKAdS
         bobQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ELVIrF0mLY6xyYfQPzxeHmDa5n7xtuIqlbdDoabFWOw=;
        fh=RtOlGJ8xaYC0aSrU2AQ7HuUOgXhg6tDTXMqWHOT68Uo=;
        b=Mf2M5RsrGz5NQEKlqNlsUHkpQGBl5paOToKRFnwhNbRk0CdVtAR611OKfNZttk+SHU
         LQ1jUKMTtm7/5W7sJ37oQhQSenmlQ1MNfIHfi3G00zsGGc/vIfPFR5t+arRsuVdcHoQh
         HV+V2ocKf2xieH57l5sUUuF/j8oRW0/ncH+roHkkW+cpfW03mBvEFlADWCXbpWLbHoUY
         YpBq0COYKdxX/tF45TKYhkC/1G1zhYlj8lueBGsHYA9fXM4Biu3lNRh6+nuOx41ZVczO
         nEURXg+VObPSghvhyq6bAN9BWwDeZf3N+DjlVAv/hU9LL+z+T56Zjd5A7ymFXqxTMbaZ
         7grA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=M9awWApZ;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id 5614622812f47-3f0375b9ae6si169751b6e.1.2025.01.10.13.17.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 13:17:36 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50ALBovw022214;
	Fri, 10 Jan 2025 21:17:36 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43xudcc0sx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 21:17:35 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 50AKbn9i025491;
	Fri, 10 Jan 2025 21:17:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43xued5r7q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 21:17:35 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 50ALHQ22034137;
	Fri, 10 Jan 2025 21:17:34 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 43xued5r3k-7;
	Fri, 10 Jan 2025 21:17:34 +0000
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
To: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com,
        James.Bottomley@HansenPartnership.com, linux@treblig.org
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: iscsi: Remove unused iscsi_create_session
Date: Fri, 10 Jan 2025 16:16:49 -0500
Message-ID: <173654330167.638636.3105141034218118100.b4-ty@oracle.com>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241223180110.50266-1-linux@treblig.org>
References: <20241223180110.50266-1-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_09,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 adultscore=0
 malwarescore=0 phishscore=0 bulkscore=0 mlxlogscore=744 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501100164
X-Proofpoint-ORIG-GUID: 8JdCA6vRvHFWTEaE3O0PG62qOyVodvvj
X-Proofpoint-GUID: 8JdCA6vRvHFWTEaE3O0PG62qOyVodvvj
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=M9awWApZ;
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

On Mon, 23 Dec 2024 18:01:10 +0000, linux@treblig.org wrote:

> iscsi_create_session() last use was removed in 2008 by
> commit 756135215ec7 ("[SCSI] iscsi: remove session and host binding in
> libiscsi")
> 
> Remove it.
> 
> 
> [...]

Applied to 6.14/scsi-queue, thanks!

[1/1] scsi: iscsi: Remove unused iscsi_create_session
      https://git.kernel.org/mkp/scsi/c/6e67b32087e3

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/173654330167.638636.3105141034218118100.b4-ty%40oracle.com.
