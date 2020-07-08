Return-Path: <open-iscsi+bncBDVIJONZ3YDRBBWFSX4AKGQEZZAMFJQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E4B217F57
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Jul 2020 08:07:03 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id 8sf1113811pjk.5
        for <lists+open-iscsi@lfdr.de>; Tue, 07 Jul 2020 23:07:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594188422; cv=pass;
        d=google.com; s=arc-20160816;
        b=zWLNRTbcO27osmlE8DuzrIQzpj2uf2cKrISPx6M7XY4T6IPfyKvuSy6cFXoYUnqZwk
         HoAhAu9A7FpvUtxFcnbRk2RgZewUGDBuCS39bX/iUfjIwtmYIpjOdo3/rzLnP34ghucQ
         XhM2oQGtFiPAZLp/1Rf1bHpdKobDUjv4qYKwmQk3TJLIPsSrxn49ag1QuF4/KSZoCqZW
         E6DakitQT8WEebdAJJssiJSdoNQk/dutL1Ldf16oNO7Si+e6o+1xQ439YUtc4VH+S5Hs
         fBVuXRuOHbQPQPIo4gT/9HwNBlyvKVRcz0x+Kdq2bM84/c8wJHYPIA29vWwnOJBHBVkY
         WTXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=3DHYe7zaAYCT67TKSTUbPbQHN4vA0/1JscGWRDAHXVQ=;
        b=dAeJ/eiLeAmsQ93wKC7m+JYykRl1M1RAZYOzIpXtfd1HjG5XFwGtSj55fm5ytgO4FC
         9xEUCz6HvbXRG2XeB+otj1JkM3K+g80XzKaG+0mVd4ZRA9nJezZvoAYzURSoZ9BYwM4g
         xGoVjeCcK9WSh9Rry0cG7weth7GZ2X0HJQjPgV7KbjxeDN96AdAHaIrdvPfnsHBsi9im
         NcUFudHWL07KcUDoiO0ihHdKasCEgCWEvPig6B7ZebVt1s4Ge7dOz9RiOMxS/2X7IuHS
         Fh6r8WqKoYjwPTCNqhm/QNCkB9YFL1dgbQnKhuKnsDBNInRY2dEsTrUvWDUozgD9Yusl
         cflw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="pH/jwCl+";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3DHYe7zaAYCT67TKSTUbPbQHN4vA0/1JscGWRDAHXVQ=;
        b=b/chevNOQleCEIEIkLGn3HPVJcOxqUC+SGj+grEHXyIJ8ajgick8szUylOMLpvIPj9
         2GwioZse+2I2PSywouotI5nXHp977lrUxKI2JD91k6UOryrzkVXumURdCA7sXTnGVWue
         i7iaONJ0rYr9qKRhYjwTf9dJDZYHCNyKsVD3KLNLE+f2xAZqm37UsqsppNK+pzzDF8Ae
         o1KlqrjZ3kQCdwg/u4QIL6choAUcRf5t5CVprPD01nGZf1yRfL4jcUGhzUPgm4lUUt/t
         ExktOQapva7QPchEt01RDL0MC0HxyyKCxmiUtvcSOwCEpTcvxkBrWoSiGCRyrY7S6sQe
         p1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3DHYe7zaAYCT67TKSTUbPbQHN4vA0/1JscGWRDAHXVQ=;
        b=Z2i7jWaqhZwzBfvZJFzcMh2U1ll+BhsngQTKJ+mwMJNheH2ErRoqoATviEg7GLxhIK
         YqnEc7DGLOuXFhp70zicDy2gauDuRLlUtOiYZozlWEKShVYy8rnDrRfxMgj9I2iTKl+0
         6ASVffXAy50jswn1Xs31dK3QTq816h3VB1Q/qR0rd4jwL1NjYo7HpRCmE9vec4YhOQyx
         4VyIfCCoz6WcJMevB7S1nzNFG/YJur8YzNBPbo2bni3Gm6m3Qe/y/4eWdtfisGe+nboL
         Gk7jsSi9A8+NdFRwUUVVceRZA9WWUNyLZvr7qjpHM0t3dIBCpcGT+1supMa4COUduV9W
         cGUg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533a60L4woReVkNpKll+01gXvrJB4fGdXCeCDAGsvFPFv4w7GRUy
	qm+dgPPkJRM6DjGiG/sE2Gg=
X-Google-Smtp-Source: ABdhPJzqnnrnxFolEHlOvF4go0Frko8T5L4C4MPJNIpAQ1znV7dR62MEzxBP6qllUunu9ZcQAAOd9Q==
X-Received: by 2002:a62:fc15:: with SMTP id e21mr52970776pfh.167.1594188422343;
        Tue, 07 Jul 2020 23:07:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls540362pls.3.gmail; Tue, 07
 Jul 2020 23:07:02 -0700 (PDT)
X-Received: by 2002:a17:90b:46d7:: with SMTP id jx23mr8441101pjb.191.1594188421917;
        Tue, 07 Jul 2020 23:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594188421; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9s/h/poQBZO/tQdFlD6cyKnZrMQ15pcGTy4oB0yZFud0uvVfRnubtLF2nvsXe5vEm
         lbJZ6k8twROqBkfDOijZOwImO7jPwFpDeRuTw0kB5w3ID/mj6IShRUAELvdvRrct/DSd
         UZbZQBZy+HtUvq4gXWHPwsP9mz2nytADx4c33iX8f5hMdGr0siezo7Qfj8C40AGN/cQD
         /FrBAEtjiaGmYPiIq0kf2u71Lf2Ha4mXli4a+DgZ1Z5d28qgKxfA9DUzEf4vSmPGb0CL
         Reh/a0pPr9xRpDktID7a5FSUiQR1kXHLmhLK71DeASLsLYMzNwDl486NP47vZEj8YnvT
         U4Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=75bZblZCVWREK4ygAUXVYc0jEuU4pa0L80rQ6Mfmdlg=;
        b=qI8T5PinFbA3sUHrRFyPF+NXLXEjA9kkprod9ypJ3gx0s481ZFLqEQ/qtoOg3oV3fA
         fzx1xq+LE89Wb8V89kcCnKopp45ayUyaRs3HCwAKCNMpNjviSmMqXidzW9zu7NfhRP8i
         rEIvak3da99TjdeEk0Ixv7BH1c587lrahN1R8wrxYlpRcYIP+/HZtzeA1Hq7WZb541yZ
         lPnekBdCm22huIUyE+QoUVBKfMs/lUGmr3d1sdRhz4xe47saOZWrzG7FtHx0P5ma9hVL
         MU2WRCcB4zkyjGHFE4Hw0wkC2yLX426xp+Rm8Wop8ymC7jxSfzJHeINdqsxeSYavjP7o
         Oqzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="pH/jwCl+";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id ob1si138610pjb.1.2020.07.07.23.07.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 23:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 068670dI097517;
	Wed, 8 Jul 2020 06:07:00 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 323sxxvqj7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 08 Jul 2020 06:07:00 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0685x91l145284;
	Wed, 8 Jul 2020 06:07:00 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 324n4se4ex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jul 2020 06:07:00 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 06866xn3011502;
	Wed, 8 Jul 2020 06:06:59 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 07 Jul 2020 23:06:59 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, Bob Liu <bob.liu@oracle.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        michael.christie@oracle.com, lduncan@suse.com,
        open-iscsi@googlegroups.com, cleech@redhat.com
Subject: Re: [PATCH] scsi: iscsi: register sysfs for workqueue iscsi_destroy
Date: Wed,  8 Jul 2020 02:06:46 -0400
Message-Id: <159418828149.5152.11275648025830739628.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200703051603.1473-1-bob.liu@oracle.com>
References: <20200703051603.1473-1-bob.liu@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9675 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 adultscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007080041
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9675 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 mlxlogscore=999
 bulkscore=0 impostorscore=0 adultscore=0 cotscore=-2147483648 phishscore=0
 priorityscore=1501 clxscore=1011 malwarescore=0 suspectscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007080042
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="pH/jwCl+";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

On Fri, 3 Jul 2020 13:16:03 +0800, Bob Liu wrote:

> Register sysfs for workqueue iscsi_destroy, so that users can set cpu affinity
> through "cpumask" for this workqueue to get better isolation in cloud
> multi-tenant scenario.
> 
> This patch unfolded create_singlethread_workqueue(), added WQ_SYSFS and drop
> __WQ_ORDERED_EXPLICIT since __WQ_ORDERED_EXPLICIT workqueue isn't allowed to
> change "cpumask".

Applied to 5.9/scsi-queue, thanks!

[1/1] scsi: iscsi: Register sysfs for workqueue iscsi_destroy
      https://git.kernel.org/mkp/scsi/c/919a295abf96

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/159418828149.5152.11275648025830739628.b4-ty%40oracle.com.
