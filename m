Return-Path: <open-iscsi+bncBDO7B5X3UIBBBM4K6T2AKGQE3QDZB2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0955A1AFFB8
	for <lists+open-iscsi@lfdr.de>; Mon, 20 Apr 2020 04:13:09 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id v11sf1459981ood.18
        for <lists+open-iscsi@lfdr.de>; Sun, 19 Apr 2020 19:13:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587348787; cv=pass;
        d=google.com; s=arc-20160816;
        b=L6WR7RLwMfP1f7P8dxDOzi4OoMbinO8lT1HbL7pDOqLPK69lfvxkSmVuDCPjhd++im
         Kixw+D4LgTQfQTKWRC0I28l1H3RoAlVYo00UktSYNH5ry+3Np78L3FGppCO3oQHP0T5q
         O5iFrRen2iaBM7dbjn4krPZABogNuIWGptk7CiHjfnBQFWvuaYLWJ/bNfNenOr0C5sTd
         HiyTQ2VpH/n5hyMgz059fm5xwebqvWgbB3c9Aidfuw/0aMfT1OLGFEZOjzB+s2lD3qj9
         +9eyxIjDPAoKb3z3aCDsW6rHYjq1Dreai8qip7wYMu/1T02nc/A1LITcLlRuYOSd/02x
         WGyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature;
        bh=0H+MmwkyzfQp4Gx6fd1+ScGPdklRu7qGwtk+SCGwroo=;
        b=vkmCk82Zrer3pJW90A5Ix99eUVNKqK1ovO2WHopGkc5Bp5ERg4+/MzuskLNTOvlcs7
         AKaSip7LNrcziJdwMWEc4hrztsHhNf9opx8dKA/umhu+2Jxg4EWvmjJWel4QQsNK7pQX
         qQkbSPrj1OHq3Zdd7JWjQosDqtAMH+B0DJ30IWBWnUARZOO2vNS9NPV0bpcmfKEnL/DK
         zyn+Mia2IilVd3Dgx4d8/h4PjxXZM24axeEjMW9JKK1TMS+3eYuGrGeiGJ27AaxaS281
         s0OAz7YnvX7X2YP1ZIf8Yx/aDQYhT3Li6EZ8YKG4weJSc6FYEInZztzLaN4I9hCPHlGV
         rE3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0H+MmwkyzfQp4Gx6fd1+ScGPdklRu7qGwtk+SCGwroo=;
        b=sz2VQRdWTnk1mnEAOvYZOwwtYZCEXi9BEVQ4aEtYj9E/XJGEvsMKmXsDPFaSmEf6IM
         7VGr0su0EPxyMvfKU247Xk0x58k8qOBkgfzxYlqQu1MKsVg1Y6h+bnRiMjTftszKg0iG
         nHceKCa9Ojr+vSTEMnLlt6B3j7djCAI77iwCgky1NXsL0MbjcuMRU6rrthdRPhzNO/6/
         7qQUCp73C/JLHCSBkNTe0DfIFskFoJH+B8H58nn5ASYp2+cCQgRUk78bDO6ABfn4eVfC
         UFMraYCNMtLMooPko81aYX6sBMgc9RWZdw9Xr5jFNfg0xuHRV75NNBRx6FCJSDwKlh2F
         7QIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0H+MmwkyzfQp4Gx6fd1+ScGPdklRu7qGwtk+SCGwroo=;
        b=HYfgbR2BiqJk8kKNIQwoL2dZYOIziqU9dCi0E5EcoDVHDsSt5b3Di8onTZ87Qt/1mN
         iQ72ypjaZd7s6PIeqyWPdUZu5mD05v6Ujr0rJHT3GKr1NncUpEZM69nfMFmwHnarme4G
         eQfKB5kOD71r78G0q7v6AU6Cr1lE+YuBywJXSpsiqGr3f0oiIh/vOECH6v6BIOSetzye
         OLQUHQTYHyKi81bep77lzqYOHMJwoYKu9RSa61q7bSEEJv4t4GSQFuER59DPz7/6BaQ8
         ctD3FMUB3iIaS2WlYSJ6To1rqwzi4PzflUzvvPupg5g1UvNuTqcMrKLNmbGEzxp+2ctr
         3qzQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuaGtbY71e/31XEL14EHZ0wI6QNyeXtD7lICRj2Uie5Qvr2tKI2n
	w1PESA02T12BzOltQS2qTAs=
X-Google-Smtp-Source: APiQypL7MRecPV7Arh2Yuptzhw8L3hRZR4sYB029k04SSBxMq12v+rpwvvYiQTDoj7uWkW5yHDh3TA==
X-Received: by 2002:aca:d50c:: with SMTP id m12mr9534195oig.149.1587348787532;
        Sun, 19 Apr 2020 19:13:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:3104:: with SMTP id x4ls2050477oix.0.gmail; Sun, 19 Apr
 2020 19:13:07 -0700 (PDT)
X-Received: by 2002:aca:b446:: with SMTP id d67mr9330983oif.143.1587348787140;
        Sun, 19 Apr 2020 19:13:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587348787; cv=none;
        d=google.com; s=arc-20160816;
        b=TdTiFGFxmb/nWqVXhQ8R/mxPYnKoU8OSs1p34a6BaMRk2CBARlEeuF/ao1+hyzGxtq
         r/64T1b8hZs0ibfRFrI60fdmFZlObyGd8rN8jW8H3livURNILnmP4dONTYsRkugfeAaN
         Ty4l9frAXy0OafnfnDCUpNsWhbJUrCplh4zXasLQTDWunuiSoYJjvw4+YnPzaImXlHxW
         1vWnTMd5SZOnl8f9pQDL343K4/H25ygFZUOiK55xp15nY5AOOiEK7dxVote/ZyVhWx7g
         ri7xL287TNYTh00rzm/U0AGZDh9PF9PF8Nmh1v4FqaoUwRi9BRnVWR3zCB9IbJxKEkg4
         qdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=FEJC/VlA7RGTLlt4YPvW1WU1VNY9sZlNEd6wbYVc6og=;
        b=ftc5kdjtAb07WRhH3KrAvSLIPs48FVOgEvmErEMQB/Y14kOrdN7OiOVFPYNac91Vsw
         7BEWmbMs/oQzRRvE4JjzrgkUcqhmrRQi3tkStf08GCdXqReSHs9LIqCvRkij5yO3oQmR
         2ou5lY7WynujVe9QVUsYCBMkk0xEWfGFQUV153Zph5Z/A+hjLUWN5OOpIwAzDAvE/ZKw
         oEGysp2j4rh4ovCw3kB/sLDlw0NYEwuIxh++YAq/GtS3picwVtF8Ep8slO4QE2c7576c
         LBDPcE9/MqYJMt5Xta/Pv8Oha0/iCji8/bgyaJ7KvXSlHWZJ3H06LI2Rl2vI7al4uUh1
         6LJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id f7si861409oti.0.2020.04.19.19.13.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Apr 2020 19:13:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id C126A401EB910C1AF22F
	for <open-iscsi@googlegroups.com>; Mon, 20 Apr 2020 10:13:04 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.100) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Mon, 20 Apr 2020
 10:13:01 +0800
Subject: Re: [PATCH] open-iscsi:Modify iSCSI shared memory permissions for
 logs
To: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>
References: <d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei.com>
 <c4ca6d31-2fe4-4f7f-a822-8b951f8807a5@googlegroups.com>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <a2345d15-4c7d-4e02-5ee0-db6363c0a1ab@huawei.com>
Date: Mon, 20 Apr 2020 10:12:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <c4ca6d31-2fe4-4f7f-a822-8b951f8807a5@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.166.215.100]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

On 2020/4/20 1:39, The Lee-Man wrote:
> On Friday, April 17, 2020 at 2:08:57 AM UTC-7, Wu Bo wrote:
>=20
>     Hi,
>=20
>     Iscsid log damon is responsible for reading data from shared memory
>     and writing syslog. Iscsid is the root user group.
>     Currently, it is not seen that non-root users need to read logs.
>     The principle of minimizing the use of permissions, all the permissio=
ns
>     are changed from 644 to 600.
>=20
>     Signed-off-by: Wu Bo=C2=A0 ...
>     ---
>      =C2=A0 usr/log.c | 6 +++---
>      =C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)
>=20
>     diff --git a/usr/log.c b/usr/log.c
>     index 6e16e7c..2fc1850 100644
>     --- a/usr/log.c
>     +++ b/usr/log.c
>     @@ -73,7 +73,7 @@ static int logarea_init (int size)
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logdbg(stderr,"enter logarea_init\=
n");
>=20
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVATE,=
 sizeof(struct logarea),
>     - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
>     + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0syslog=
(LOG_ERR, "shmget logarea failed %d", errno);
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return=
 1;
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
>     @@ -93,7 +93,7 @@ static int logarea_init (int size)
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size =
=3D DEFAULT_AREA_SIZE;
>=20
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVATE,=
 size,
>     - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
>     + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0syslog=
(LOG_ERR, "shmget msg failed %d", errno);
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free_l=
ogarea();
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return=
 1;
>     @@ -114,7 +114,7 @@ static int logarea_init (int size)
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0la->tail =3D la->start;
>=20
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVATE,=
 MAX_MSG_SIZE + sizeof(struct
>     logmsg),
>     - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
>     + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0syslog=
(LOG_ERR, "shmget logmsg failed %d", errno);
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free_l=
ogarea();
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return=
 1;
>     --=20
>     1.8.3.1
>=20
>=20
> This looks good to me. Any chance you can make this a pull request for=20
> open-iscsi/open-iscsi on github?
>=20
> --=20

OK, I will submit a pull request for open-iscsi/open-iscsi on github.

Thanks
Wu Bo


--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/a2345d15-4c7d-4e02-5ee0-db6363c0a1ab%40huawei.com.
