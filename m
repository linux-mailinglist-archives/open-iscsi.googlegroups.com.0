Return-Path: <open-iscsi+bncBDVIJONZ3YDRBMPZYGJQMGQEOCDI2WI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EE1517B4B
	for <lists+open-iscsi@lfdr.de>; Tue,  3 May 2022 02:52:04 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id w8-20020a9d5388000000b0060613b46a98sf1960598otg.8
        for <lists+open-iscsi@lfdr.de>; Mon, 02 May 2022 17:52:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651539123; cv=pass;
        d=google.com; s=arc-20160816;
        b=C082bEefZmKnF5SP57GceIqjlGPTr3HmOUYD+MHE4fa32wt4cd+1kCv0DMXKTxGum9
         XwFZWXS/lvT94MzzvCNEWxg/3Kx6A9s+7CFS1axgj3Pm3bSBJSfVqB+exevXgn0N8toy
         c+8woKXdF9XhTUIYGem8p/UARqD3Qi20oY5amCiCms7jgOhXg+ypqYArjDzmwzHaMix7
         iNWPbDEyUwIRImBC8CMNqP8/cwzQGiY1ckVqB0XxCn+8M5XTSGQHVkMps5SrOdj3gvRG
         gkycsZDUFK0EvsfGVQdlaVhvUDm6M91ILV7GqM3GloPvwKvJlWhAW7GIbFRACR5vCAM8
         tXPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=jVZVKqjkP4xschZTgzCqb3p6rT2eKJ7/lRfrJyufhVs=;
        b=NLWyKdiAWCKYbc1fq8xp/Uggg005IaTtRCFehDtLP82gXhuYNmFEm3KM3/xg8+ss9Y
         3Wwq1VHLUpvdIsp0qquu0J6cV5wQtTjJiKakCuAOk/J49z/KxSfkOvpeK7Hea9NhmdPx
         +k1oitjZa8n/IZJqg4ZqXDTGIcHQkc+dvAegdcYj42RQZCLyriPFHE8vm7XdRppjlxl9
         y8/WKTpZ6OUtyK/tXPB1ik6sE1t53I3u4Pk+tkR8X+QHdCoylENGGtGTUmEB8zIyC428
         k6M3OTx5Y4aNPOYmr6X6k7xQj3tLuE8HsZTGGScHvXUJoektZcBwtZIymw/xESITFLMT
         LdKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=qMhkNMil;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jVZVKqjkP4xschZTgzCqb3p6rT2eKJ7/lRfrJyufhVs=;
        b=DfIyvlqnEHt1NAViZ73bCap1uzZjElSiVlt0SGI4jgwXu93YPo1mr3JrWzzXWaCNHQ
         +mQQT+0yvwfTJsTRfLGQ9fdNzb23em5WXMdJ7kj3DqQ5A+zBdMbyZIn0MPZzFj4UN6DH
         uiQr0kLt3ySYrroqlC8wXHoQ5bwcbyaxbvydnbx7fXOb9SzV2xv6Ni2k1S9P/Ax84q3g
         c9iwid+QyUV6m7A9vnbsjiotSzQqmCZc4/FxMuY5HvOMx8yRsIN2HctqOc1MYa3yBfyq
         0iR2rwmpvqg9IGE+my5/VpJIdDQpbgRtjX9n/RTNDjr0S2Ae/ZTfxSiT9E4onTUz2V20
         ArpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jVZVKqjkP4xschZTgzCqb3p6rT2eKJ7/lRfrJyufhVs=;
        b=lKbDm00cNWqUJ3lXAZOn1i9P0nK8prsI9La1ErQfNM6L5g2x7D+nMcDnf+KpCONgxR
         Tq+hEhd/j8BTOXaI1mbV4XhkPkSHT7L+R4961XBL39vqowNo52ooQhLAJ4bFe30C6+U3
         xUZen1MlM2o8nP9eZs6PfKE/f9VBq994cJRpUdQ1VtsEeckx30bOUw/I3pKnVe3O1Lph
         oh12jhmGYrSQPJckm1H/jtFnD4layaVlQf9U30fklZVCfCVay/p8aTWaWuYnY0mA9LNM
         /n1HaOw68m1HKzIrsWVsI2o74Ml8pyM+bPCykBa5/ylywg2UQl0FdgeG+jA9wU0b89ht
         EAww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ab0F3RyPctnvpB245yM0tV8qKswvUPrN0AFNCbj6gxa7SC+uI
	Fwkac1PpywouhMYPcQiH1zk=
X-Google-Smtp-Source: ABdhPJxtOAlZ4OC2kDfn5E4dIthM0mVfGB60R5uo2CJhI8jZuwlM1k3sVGI4U82ndR21s4nAVPXCZA==
X-Received: by 2002:a9d:ed1:0:b0:605:e54f:b8e3 with SMTP id 75-20020a9d0ed1000000b00605e54fb8e3mr5051994otj.47.1651539123164;
        Mon, 02 May 2022 17:52:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:17f1:0:b0:606:140a:e39d with SMTP id j104-20020a9d17f1000000b00606140ae39dls1362193otj.7.gmail;
 Mon, 02 May 2022 17:52:01 -0700 (PDT)
X-Received: by 2002:a9d:6a7:0:b0:606:2a7a:236a with SMTP id 36-20020a9d06a7000000b006062a7a236amr1400846otx.243.1651539121542;
        Mon, 02 May 2022 17:52:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651539121; cv=none;
        d=google.com; s=arc-20160816;
        b=Xze/7vWwhQ27aGWSWu68qq9mRfrU88sl939PB5YO8y+Jd8iroZ9j6PL72ynlkupXif
         kvNmljBq7ZclLAE5XXw20LvcJvG2sX1tYq16FMOBp0CbVOwzjpoTKA8V7fX/EiJym9MK
         8GTSvxvKR+qNgO6Eaamrw85qr3M6j7Fm1T93vwkeRlOaZckunZmfXpnlKqt1ylGznjVw
         N5rtqGMNEg4JdVLTLYGlsMsQ6Vq9QzbLd6Fy3Yoi0urngD8WAl+Bk6vWClAsUDjd5JhH
         beuPAl9iMP53Vr4ikRozrk8e9gK/z8peNbJ0WmXS+T2sh3TLRPk+yNCt618KDSoUo2pQ
         jHog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=67vHh+9Az8hZpxHAY/BM8W9RVLA1/ucOi1HkxzLhVCU=;
        b=p/97NiNxN4T4moOEbi1LNfcc81tUURNUyX5GOme89240WxSM5bopEuhgI5pFIzDI0A
         Jwmg5TfBebW7CZ3zqoy98CdL4aYZY97QetkJy3Ngfebah0G5yTeNzwYaiMdhl9T8gkRt
         JYEonDRCBpyR6cOO7xHEHp8FdP0X29s7Wm6y+HDvWxFhM/BThoG9lG51F6RNkubZEGFZ
         d0HTEkZjl/WuyNjg/Zbkiucp2c6/CZyQQyyYwj2Z8ADk3lbdWFcB9ZqTv+cjepXfcsAG
         r4spRnS21G5Dqq6hxMxqH+KiWfhJWEGswf6qA20wGujt90LFKJf7D6LWfeHQu6NCkMMw
         dtgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=qMhkNMil;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id bq9-20020a05680823c900b002da82b0660dsi2056763oib.1.2022.05.02.17.52.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 May 2022 17:52:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 242Kw9JP004338;
	Tue, 3 May 2022 00:52:00 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3fruq0cp5s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 03 May 2022 00:52:00 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 2430opCX008935;
	Tue, 3 May 2022 00:51:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3fruj83x9j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 03 May 2022 00:51:59 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 2430pljc010389;
	Tue, 3 May 2022 00:51:58 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3fruj83x4g-21;
	Tue, 03 May 2022 00:51:58 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Lee Duncan <lduncan@suse.com>, Mike Christie <michael.christie@oracle.com>,
        Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        open-iscsi@googlegroups.com, kernel-janitors@vger.kernel.org,
        Chris Leech <cleech@redhat.com>, linux-scsi@vger.kernel.org
Subject: Re: [PATCH] scsi: iscsi: fix harmless double shift bug
Date: Mon,  2 May 2022 20:51:31 -0400
Message-Id: <165153836358.24053.4874594014985340234.b4-ty@oracle.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <YmFyWHf8nrrx+SHa@kili>
References: <YmFyWHf8nrrx+SHa@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: nkmbSd8g0PsL4igKT8S8RWQY_Emg_LFC
X-Proofpoint-GUID: nkmbSd8g0PsL4igKT8S8RWQY_Emg_LFC
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=qMhkNMil;
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

On Thu, 21 Apr 2022 18:03:52 +0300, Dan Carpenter wrote:

> These flags are supposed to be bit numbers.  Right now they cause a
> double shift bug where we use BIT(BIT(2)) instead of BIT(2).
> Fortunately, the bit numbers are small and it's done consistently so it
> does not cause an issue at run time.
> 
> 

Applied to 5.19/scsi-queue, thanks!

[1/1] scsi: iscsi: fix harmless double shift bug
      https://git.kernel.org/mkp/scsi/c/565138ac5f8a

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/165153836358.24053.4874594014985340234.b4-ty%40oracle.com.
