Return-Path: <open-iscsi+bncBDVIJONZ3YDRBVE6UCTAMGQEBP26EHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E0676A171
	for <lists+open-iscsi@lfdr.de>; Mon, 31 Jul 2023 21:45:27 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id e9e14a558f8ab-34670b3089dsf35325755ab.1
        for <lists+open-iscsi@lfdr.de>; Mon, 31 Jul 2023 12:45:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690832725; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkUgrNH6RNwwHuKid1+zcol9L43NufrIkLYORI0TrwFydn+5hH+pSeRDWmtNSiqIMx
         ARdyWMtdBtmroi+atYaTMiNfIPxZy5NpnZse3Mh64ud+8295C5ORCi3o8YlWgAOb7NUP
         6DepgLucaAAGHyFdhhwwRRz/3Za3rxOQDnW6+jUhz1iTfAAA+zQl/GVh0a+1bv8n0nPM
         yI1TOQIFG3cpK70R+azp3SUSzCzE4gmZbI5vFUzMdAPaW2MSJm4+x8jkbE5UAn1/s1Lc
         14M3Y2SW5KJYPn0apODm0gKvnQofMUdEAJW5S9eayh1ZSHUW6InhHhNHYEl5DYjEMWtH
         zmRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=pNl7C1UFS9ZzEJTLmxdU8WY+paObs92NjducCt62lhg=;
        fh=Ht63x6mSnYCMFJCHFyQ5/5x3ogHziTaBxozqmrL9bgg=;
        b=HUs3v1Q1t4HWoxjHoQyTySBaCJyap/6vZY49wag0iGtmvNKJAblHFiPWPaESBjtH1e
         vn/FkBAlGJsm7iespfT/UF6JtYEl6o15Zcjz64eriQ7o+jF9Rr127S+JM7ZquaDqrD8C
         FhD/ucntFWDmFVjbJ75KgmUugS21FvXIUTMLiiTqktH/3uBMkaxzhAjCQ9a7qMlYdjZE
         AvrMY4IVKWjx89suPY+ueVBbEsycG+S3ErDGoU0p0xg9K0ODC9eATWfgcVIzDsLnPL+J
         GGeXPCIdIrYl9diqKCo5ixJvdTLUmpenlB5t7ZVX3l/s9GwM0zUylyVr0W21CHLe5BmZ
         aQEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=QqV4wdu5;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690832725; x=1691437525;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pNl7C1UFS9ZzEJTLmxdU8WY+paObs92NjducCt62lhg=;
        b=eZf8cfkS3E/iyvb31Zb5/nB/gELzHpyrZhTKHnJ2ZVSEckSb8qfiWXJtrQtoNQJ6x+
         MziN/37nCB21WiA846FjzPdsOgZT6mcmqu7aYbZz0S/tnwWSluKG6Vm9T6iwsqjZd6e3
         B0oZQQdRHPgsnHrWz78+4jir9AlGDa9u1UYzghy9iipz7I80xEWmjiKZ5mCeZnsGNaXz
         dqJU9gXAL60LK1UiABkl+aURbsN+Hed+ilFh4fy5y8HVtc5DDQn9Fq3ZreNBoVFf+Cq8
         ILSlV/9WW8IibNWsmW+mMUBINPGLgM9yRffVRLsRR0rJxH2iAjQVXT3M25frYtFdnoX4
         hUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690832725; x=1691437525;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pNl7C1UFS9ZzEJTLmxdU8WY+paObs92NjducCt62lhg=;
        b=NMsA+Eah2pR5kojN5TvwjJXUGMIgu+jatT/WXaqa6/OaQ4dpA9WJ9DIlZhXU2FZw5r
         +zdFhmg9zHQjVF/qivKF/xCex6oWMtVSGKUxMd/rZJ1AnEsmgGOp+s7R0LOHooGlJBoH
         s7Qh4sG5byJvWRmi+k896njgyrnMl9pWKaQBytktUjjBpYsU9A7iOLEwjjohsP0B4LXh
         xHQhz9EQByzx5LFuWhBmLNGMlFmZogfVXbSVpycVdYyz4ykr8s4wYCuNvwhqoJbo52pn
         giyWxhkbFGyubY+t03rEXQq0bxFG008RqC3HDodGw8mM72EeAyfPIRFfcRs5pNggDPDr
         8+Ww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLYk/yTuCYNgq0IWi8cmJqiQgUaalRs8GMaMjulz0KYeJax58m/m
	2UJaPyl6hGMpRBF0ZePwTHo=
X-Google-Smtp-Source: APBJJlGsIOX7X2Vcl87WGWzfMhRlJEANuEMHwaSv2lFidNktX+DLPYRwfkaUDJRId5rtG68KSCfjLg==
X-Received: by 2002:a05:6e02:1528:b0:348:b07e:fdac with SMTP id i8-20020a056e02152800b00348b07efdacmr11672595ilu.3.1690832725645;
        Mon, 31 Jul 2023 12:45:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:7c07:0:b0:343:c13c:2e7d with SMTP id x7-20020a927c07000000b00343c13c2e7dls2482881ilc.2.-pod-prod-00-us;
 Mon, 31 Jul 2023 12:45:23 -0700 (PDT)
X-Received: by 2002:a05:6602:1691:b0:786:a615:6281 with SMTP id s17-20020a056602169100b00786a6156281mr12420224iow.3.1690832723282;
        Mon, 31 Jul 2023 12:45:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690832723; cv=none;
        d=google.com; s=arc-20160816;
        b=ijtsjNvfBvPFyp02J3dV1nbPFkjHm4A3VA09bm/PneM4ca6CB8JWyRF3u5yH9Ga1KC
         KzIVecBn7lyZ9nKCAI98flPOlhKmJBVZkp3/X+12SDhVCqEMzuOjU62qH7Ru5YavMhEl
         vgYQNtekXfGxEpnT/GvCxnI6l3j0tw7zbl4DzVoMbhmEeypzi5ktg3G5crDoxgnFULhy
         E+PfLZoKB9w6UvJk6PvXJbysr86NBAN+SaMm/pQobUZvHLiT1POQWbEvFT1gOeZyG5vw
         HWckkOjB+tfGekLb8s5oDGX4Cr7dKbmFrtaeQsoOeqmIr8oPRPhlJKesa09y6BQ9Nua9
         E5QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=G7YJJ2j0tg7epV7YgG1Ddfsc8YtQIbaDMwZxEVp+CQI=;
        fh=Ht63x6mSnYCMFJCHFyQ5/5x3ogHziTaBxozqmrL9bgg=;
        b=m6822c0twnyqwGMK//0M6fjne3OEad3Thx5jOSv+JQnlNRxwF+CrVFy2JcKNpalcqt
         L69eEcXqjd7ur90KRizqNxtUr78V3SckqSy+p5j0b+ERMbvhOmSxdLLWS1T23OgbSNcs
         6hG7gqRos9lHei1C3zlAjZ/Zs5idxbwfc8KOldlBbjwrx+UxoPIqsnD+ksQuLaU/+DOi
         X0C3IuIO3pBFJ5P3quBgyyipQblUrBdA+EuyEVEoUjIIz1i4WDC94nrW2SyWGSOol2+O
         jA1356YhQOYJa2UrWlQx/QELW9vRAvAantNQGftOV45v9hs74TPi0Fw6J2HpvRZVOu39
         LIIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=QqV4wdu5;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id fg15-20020a056638620f00b004300217be35si660799jab.4.2023.07.31.12.45.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Jul 2023 12:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36VDTaDI024754;
	Mon, 31 Jul 2023 19:45:22 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3s4tnbbdpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 31 Jul 2023 19:45:22 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 36VIFp8G013569;
	Mon, 31 Jul 2023 19:45:21 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3s4s75cmse-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 31 Jul 2023 19:45:21 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 36VJjEfj025102;
	Mon, 31 Jul 2023 19:45:21 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3s4s75cmf1-6;
	Mon, 31 Jul 2023 19:45:21 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com,
        jejb@linux.ibm.com, haowenchao@huawei.com,
        YueHaibing <yuehaibing@huawei.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] scsi: iscsi: Remove unused extern declaration iscsi_lookup_iface()
Date: Mon, 31 Jul 2023 15:45:07 -0400
Message-Id: <169083266404.2873709.17161054183653404974.b4-ty@oracle.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230725141531.10424-1-yuehaibing@huawei.com>
References: <20230725141531.10424-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-31_13,2023-07-31_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 spamscore=0
 mlxlogscore=771 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2307310179
X-Proofpoint-ORIG-GUID: 814jzVMC9Vm9OCeTPL49B1wqTB0w9oPC
X-Proofpoint-GUID: 814jzVMC9Vm9OCeTPL49B1wqTB0w9oPC
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=QqV4wdu5;
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

On Tue, 25 Jul 2023 22:15:31 +0800, YueHaibing wrote:

> This is not used anymore, so can be removed.
> 
> 

Applied to 6.6/scsi-queue, thanks!

[1/1] scsi: iscsi: Remove unused extern declaration iscsi_lookup_iface()
      https://git.kernel.org/mkp/scsi/c/a615e93d6cfe

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/169083266404.2873709.17161054183653404974.b4-ty%40oracle.com.
