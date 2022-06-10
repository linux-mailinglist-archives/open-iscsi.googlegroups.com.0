Return-Path: <open-iscsi+bncBDVIJONZ3YDRBKUGR2KQMGQE52JL3MA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113a.google.com (mail-yw1-x113a.google.com [IPv6:2607:f8b0:4864:20::113a])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE46546BCD
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jun 2022 19:45:16 +0200 (CEST)
Received: by mail-yw1-x113a.google.com with SMTP id 00721157ae682-30c14765d55sf234989817b3.13
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jun 2022 10:45:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654883115; cv=pass;
        d=google.com; s=arc-20160816;
        b=iBruDc9ov+JAQLZHHx1/WZ5wmZADYYylrPuo2H9LsWAqdXvlJ0+tltICiP2nR0r4aB
         O5SydHGUz3SGnBmi39e5AnMEuh+3zyDTNqf7TvwLabY2Ss9ARIHCuiR1hpggkYDnvJ7a
         orlv0JNHgXN9b85Y464vbXk3sradI90PaX4J7qD9dGKXHX/AjAFGOkOK0NiMnrihToY/
         AjVAvjoQ0iTA/ryHGVgkVEGrH/eNNyy8GThx0IXb8UDqTtTYgeIlKf+8WNOwhaqTm2uW
         ps7TdxgbH2DwNbMAhQ/xwN/aQ8bhzNm/m1t8ir7NLbgJHmMHQae1H5HhbRVd9dc8Q+gs
         nfEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=1gTyzItcxL0fd9Bj0cmdutabbQ5vXuNKiiC3+fOj+Ss=;
        b=DNluVwOKxeWAJiSgsDN54Dgk9P/x5BdYhlUO7RG3Sm1D6x61zty33JPl5Wl7qBQVlp
         Kp5D68L/5UNCJ7vTNpF60ZKPk8D4H01sSbJkFHmm9eyMBUqfSd/aYnVGWIQYqhPVKajU
         qqpNOHYUyiJbWqZYxN6XdUgbvTn1gLLGf8j/ZLxA3KArR9H+FmvIn55vjqR5T1xYydqA
         P63udd6HPY9aVKmKf7RLsUagWlR2dYTT7KPqOJ8aDh3gPuHItPY30E06rZhq0Wofbzmv
         A/gPlfDJkAgwtXOdH/TN55eOwFl5wrptnwaMH7U9FBYZMhOEz3Q/IyGVslN1JDK/7Rhb
         8UiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=NCT5ojSs;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1gTyzItcxL0fd9Bj0cmdutabbQ5vXuNKiiC3+fOj+Ss=;
        b=NMxE5g1KOYfNhd9kKkdIgZRp6/IhUt3vFj29SKrk++bDbWJ3yUsg5PclUBr1zxH6fa
         UhRQetpVEmqrIXo0BVMzcKuOhG75FxvfNt4lxMRccFR99zf73hV9vHv5GYrlFmSEvs3R
         UPBfP/pz0Ig+RheIxrV0YIyGh2VPsLvayfgSifiFvGEF5yCyjoNFjKuYCl/mijcyaRzK
         4wqsxi+xsyfmkRldcWvJ3RWSuZxpAVZQsIFlBhc/zQCRAGZRYqm5tOLF7aMCEzb+Wikx
         aqMa+U7KFIp/ha2dos3cxjVpaYg9/frYIh217tOIFM/AKEBdQyzm+FDcTonPkJSGPxCG
         an9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1gTyzItcxL0fd9Bj0cmdutabbQ5vXuNKiiC3+fOj+Ss=;
        b=XujfvpQT1vHE1K6lC3J1psQzvdlmEGiO6x1YWLhqwCCrxlFodCed9A5kJa0SCSaQCz
         Maf7iTGUjis1BnMGBerQ5KcOENH0EgzLYLt7hwfuZF6/UsVuJz8ufRI+9433pS0Ka+jt
         cQWCZ8Er6t5wsZJJ5TyARzMd83BM9tnXiK7NVJ1Q1JVhe4L5lCHOnYuWAzSPfFSgJFBk
         p724au3pjHW5zjN2CNwqV6gbQubKdkI1POizDYqIRulwm77+k+ChoYa1bLA7lbH6EBn5
         mcclw0p3PW84KKsD+rZhObv9OybKfB288CpPJz8oEU7I1KUsJ6ZHl3e3VSNswKjnqANt
         kr9A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533NeWvVdO2fXbn43CcMPs+3KXLSLP+ZBCSApXBo8iupsOzk2l0q
	8G87opXjr8XqpIbjzrCsS4Y=
X-Google-Smtp-Source: ABdhPJw+kWJCMLupLYPSFz8mX1yMhw9fMchUAPs4t4PCPLx2h7OnLPP+nc+SzuaSFn8z5GLcDWkhTQ==
X-Received: by 2002:a05:6902:150d:b0:661:e9b3:49d9 with SMTP id q13-20020a056902150d00b00661e9b349d9mr39621684ybu.195.1654883115626;
        Fri, 10 Jun 2022 10:45:15 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:b52:0:b0:30c:1bd3:7cf0 with SMTP id 79-20020a810b52000000b0030c1bd37cf0ls4604045ywl.7.gmail;
 Fri, 10 Jun 2022 10:45:13 -0700 (PDT)
X-Received: by 2002:a81:ad7:0:b0:2e6:84de:3223 with SMTP id 206-20020a810ad7000000b002e684de3223mr50657375ywk.209.1654883113913;
        Fri, 10 Jun 2022 10:45:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654883113; cv=none;
        d=google.com; s=arc-20160816;
        b=NNZcICrfbeXZSCwHcVy0G9rsag28FbXc+C0VMhALPlUfS7n9DNrOEFm8NA9mFejCrj
         nn0GP4XlAolcpOZNZM0vqvgCOxAeeERXKO6T5Nu7Jfeu2mhYiCnlOZGk2c0mCDd0j16a
         4gnkRjzjBOCfU2gV6wLWlaUGjIU/XPTXe/ROP1XCO9MmFK57w/Ml0dvSVlfWu/UEPz7w
         1uCoY1H4iq/KYKwocbQh5Xndb3In2lgoPxOcGTBN/gyeCut9DgeHKO5t3j7CfE3VMtxP
         T1A4NWSQrSS9e8oNtWHMWYRhSIIna7OYUWrghnj9ldx4NDZCwkHxQdHtyZ5RSOZVrX8L
         GHjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qy6xaM4c9k8GHDIeOJB2CNTWmIPmnsiOo79l09vf+qA=;
        b=zBZH7P7h8KQIJfJdowIdklJHuEEHG68ExnQJ/hbpAs5yEy0jJWlQURj0hEzycOcV+5
         E3cpdXfPfNNQ64nOpl86a1iY7VjcR4uc2ZVwQRcq6Asxumu0mFn9rcRZM+hQP4vnL/d+
         Pes6id4RTtjE08rAObFTlBiFHKaqxm1R4kDHJhT85BXGXEyt4E3bjKgWmPO3T+wRrDG/
         WGMfuEPzAHo088tssrD+1UNwFAzKNaUXUfhvMYJY15Ihz2tHYMGniYjD/BKZs4lg0n6z
         3tAj/t6AqZEGXTBJP896ZXuHvr0BNC/C6PKWSMEiuda1Yd/SIRJuvLQlAnzr1p2E4WXy
         ud3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=NCT5ojSs;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id 144-20020a810996000000b0030ca150350bsi1593640ywj.0.2022.06.10.10.45.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jun 2022 10:45:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25AEONKW006817;
	Fri, 10 Jun 2022 17:45:13 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gfyekp6x0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jun 2022 17:45:13 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25AHFMx4034947;
	Fri, 10 Jun 2022 17:45:13 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gfwudaupv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jun 2022 17:45:13 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 25AHcugj012397;
	Fri, 10 Jun 2022 17:45:12 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gfwudaunq-2;
	Fri, 10 Jun 2022 17:45:12 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, cleech@redhat.com, open-iscsi@googlegroups.com,
        lduncan@suse.com, linux-kernel@vger.kernel.org,
        keliu <liuke94@huawei.com>, jejb@linux.ibm.com,
        michael.christie@oracle.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH] drivers: scsi: Directly use ida_alloc()/free()
Date: Fri, 10 Jun 2022 13:45:09 -0400
Message-Id: <165488292963.17199.2741130090390033654.b4-ty@oracle.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220527083049.2552526-1-liuke94@huawei.com>
References: <20220527083049.2552526-1-liuke94@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: g4foTtVNoAI6-Ak9diqR8UK2Axx4YXDT
X-Proofpoint-ORIG-GUID: g4foTtVNoAI6-Ak9diqR8UK2Axx4YXDT
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=NCT5ojSs;
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
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Fri, 27 May 2022 08:30:49 +0000, keliu wrote:

> Use ida_alloc()/ida_free() instead of deprecated
> ida_simple_get()/ida_simple_remove() .
> 
> 

Applied to 5.20/scsi-queue, thanks!

[1/1] drivers: scsi: Directly use ida_alloc()/free()
      https://git.kernel.org/mkp/scsi/c/3fd3a52ca672

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/165488292963.17199.2741130090390033654.b4-ty%40oracle.com.
