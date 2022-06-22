Return-Path: <open-iscsi+bncBDVIJONZ3YDRBDXUZGKQMGQESPNTELY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5136554060
	for <lists+open-iscsi@lfdr.de>; Wed, 22 Jun 2022 04:10:24 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id 75-20020a9f23d1000000b0036579695596sf7973021uao.7
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Jun 2022 19:10:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655863823; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cid0XCNKc1Y7qxO+jHzZCAbSN9dkWGlCZUxa5CHa8BQ1d2+ArAf1PaX9Z/uBBIq3Yf
         htL3n2vhjcqSt0hP8QP2fyU5CI/vvkGewkVZXY8y42bQQ9RYHIzH1AVqMTMZB5JIXHyo
         mlah5zJ15GaxJRYecwrzJMLk14x6axTOX2GrX7C74JIV6VChKoUO0NnbLcBamLB0Fkch
         o5A6rKqw870+dMLF1QZkybF2pMO3VsjAEYCcz9/QGEiFvgCvP8dJ1e4sh1gLdcS4Uslv
         qgGyNrCz1Cc5Jg8ExQMVqfx+NXVyMmO6DWBKXyaxWDbTIhbSPilHLF1Ggipn09G2wfTA
         Nd/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=5CP64Z/+AnjTrXe9nUkCujwLP5Fw5tRSs0JvAnBX608=;
        b=MPGPjSC6aMN1hX8PPhnXC1xsXFOq0oGMXxWjaoK/PXfIl5R1ZU9CRxWc2hWit4EKP8
         L50rQSfxlDqJ2bqiV4d2/GE9W549ZTGzI9f0CGqNAzrNgTuZCGrnb/4NX/kcI4hIJi29
         gjgdhB42n5+9UMa+FWETo0mKh+xOmF+72K5OwU6xEobaGPWgrfz8BXeBEjvjPwUXL8SE
         cqRDSRL2zbyClC8RTX7Tbs4WbuNB4pJdpRxTiP3+usCWNWFRB1FZJsNVkHgT6FKvP3az
         0GGzWnEP+WNrUTBkPpgOSowGqsyI4/eNsApZHT06UPhFCzIM5jyEIg43tTKf9igw0O8n
         K+Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=BVNmBtGf;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5CP64Z/+AnjTrXe9nUkCujwLP5Fw5tRSs0JvAnBX608=;
        b=Q2BlFbeG+HYl+b8yw/Dm4HGuCgACYd5M4eH2B69zZqgdcVdNeNgAYR5Q5yUR0pFVxj
         mbr1/kMVp3nQsFDdKwHzO/S+paILeGAC9hkVSNUo+r08tpl3R9Mt+82Cf5EpBolCFH5J
         yDl7Bhck/hWVCrsC+q2UD7653TiaOgO1OmoxpJg4UujO6Gb/xmZFwS5XTlnrD8Dk9vQz
         bbxuK3bf9Y7zxDHoPw1M1p07RnwwRi2xSwOJTXF7JeHGak7Nx2ryhPKhms9UlAFCXuU9
         PGXoIkdFCZPci5E3K4Hs7lm9sImyNjMd7MVbG9GQg3a+o8DA32jZy0RJ5SgKFtPdliJD
         QxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5CP64Z/+AnjTrXe9nUkCujwLP5Fw5tRSs0JvAnBX608=;
        b=UWWCuYeEpqOT6A7ueyV3dYfwNtcKyP8QRO0ofW/1AI1YVNI8SWooLTf4IItBKOZbTa
         +X4ur66DnGsD3YYpMqWVksZtmz459lOoqmaVX05zxy800jlebpHv8QoSze3GZzcn2Jex
         oNqESqLtYvKaPDl062ZApF7wokXt7pW08Td45r+0PU/xb9vlGpJTP5v+ud8OV2c1znL/
         aDwjaOIGgVNoEGaefzZZJ8as2ZaoKpf5Muq1OGGTmAIUUkXY5v3fqmJgSBslbljLyRyz
         1YTB5MVZ0BiMnQuNEfJLKwRLqjic8d8P1qdpGDv5FDqyUl8XThnheskQanD3qMs3qsId
         +uxQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AJIora93W9LV75VgebWNO+sEVEWYknpXeT4EHGs5cZ03kfNjaRFlqHfg
	yYFX752VLiMHYpPW9Ot2m6Y=
X-Google-Smtp-Source: AGRyM1sVngFTJ8aeIQMcn+gMupW41JN1hhMZRaPTxhCb9kUVgseF7j/Bs4cNaiHVHLj7N0UjybgP2Q==
X-Received: by 2002:ab0:1390:0:b0:376:4e3a:98e6 with SMTP id m16-20020ab01390000000b003764e3a98e6mr519444uae.64.1655863823584;
        Tue, 21 Jun 2022 19:10:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:3713:b0:34c:2462:25d8 with SMTP id
 s19-20020a056102371300b0034c246225d8ls2932670vst.3.gmail; Tue, 21 Jun 2022
 19:10:21 -0700 (PDT)
X-Received: by 2002:a05:6102:e14:b0:354:3883:f103 with SMTP id o20-20020a0561020e1400b003543883f103mr5414524vst.5.1655863821414;
        Tue, 21 Jun 2022 19:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655863821; cv=none;
        d=google.com; s=arc-20160816;
        b=JCXOySCnbpE1j1zdFSM1uOop3trJ/7dZQ22oTjFyMO05jsLPsXd9WiR94RpNF17G+3
         OrFlNqIeBEqNcfoJSVJEW0Tz/Wdpeota41SztFEzJz69unoCELSGK+C6dwDU2YCNmGC2
         9f9RS62KD2lISOSYkl+5/zksV8fAc3kdV/dOwIhqxiRhmuRvUJSVT78Yjvt/aBBQyFLE
         I/WXb6/5vzyK73Wtj5X+QzFITjFI7WL1ZWpkPOWK1+PbcrPGuCOB9yqy+OfyrS1g/Qvu
         LMTPAcoyDVwbH/zx2V5nb+RsPDWka1beGn4uuAwa0B3/VeH7yMWZ34+LFhEXlMUgHg+E
         0zOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sVR8nukYIxkCZX2MI2OiQeNj49Jy0f4htE/CusE+gIY=;
        b=nxTOFKE3vgegIsP6l4yQYbq6az57jobS1gXFJnW9JGWhJgnaXSJ3FwqeYLYFHAClS2
         svi+FTpOLZ2sqpCoj/jbDJSgNNgM/xrN1Fnz8L1fzCtGLYeKYI2pO6CL5pS/TqOyC4U3
         OTrzKyzYsqj1n1b30RDrvL8gGr7o2Zp2kypmkuixsDwdcqGZKOcsKuofCR0epzzI1fb0
         iiL1kS92Ibns8bwc5MjY0v+BZjzHBOaDINgLT7VwjwL3j83D1F4gqtEAz/pDq55V30Wz
         RKjk7GjqqFvot/ot+H6ly34wdHruSsdODCItL5WAvR6gITTXnFX52HRCRLuLRwavNzO/
         zlwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=BVNmBtGf;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id ay14-20020a056130030e00b0037f13500ccdsi785000uab.0.2022.06.21.19.10.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jun 2022 19:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25M0J83V011419;
	Wed, 22 Jun 2022 02:10:20 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gs6kf72tw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 22 Jun 2022 02:10:20 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25M26XEQ037980;
	Wed, 22 Jun 2022 02:10:18 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gtd9usx3s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 22 Jun 2022 02:10:18 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 25M29Bio002724;
	Wed, 22 Jun 2022 02:10:18 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gtd9usx36-2;
	Wed, 22 Jun 2022 02:10:18 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Dmitry Bogdanov <d.bogdanov@yadro.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        Konstantin Shelekhin <k.shelekhin@yadro.com>,
        open-iscsi@googlegroups.com, linux@yadro.com,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Date: Tue, 21 Jun 2022 22:10:12 -0400
Message-Id: <165586371838.21830.14886184856943048987.b4-ty@oracle.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220607131953.11584-1-d.bogdanov@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: UjP0GGweV_k-NZy3M70bUX1UemYGdtIr
X-Proofpoint-GUID: UjP0GGweV_k-NZy3M70bUX1UemYGdtIr
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=BVNmBtGf;
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

On Tue, 7 Jun 2022 16:19:53 +0300, Dmitry Bogdanov wrote:

> In function iscsi_data_xmit (TX worker) there is walking through the
> queue of new SCSI commands that is replenished in parallell. And only
> after that queue got emptied the function will start sending pending
> DataOut PDUs. That lead to DataOut timer time out on target side and
> to connection reinstatment.
> 
> This patch swaps walking through the new commands queue and the pending
> DataOut queue. To make a preference to ongoing commands over new ones.
> 
> [...]

Applied to 5.20/scsi-queue, thanks!

[1/1] scsi: iscsi: prefer xmit of DataOut before new cmd
      https://git.kernel.org/mkp/scsi/c/65080c51fde4

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/165586371838.21830.14886184856943048987.b4-ty%40oracle.com.
