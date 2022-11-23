Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBOFV7GNQMGQEWNLTAYI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C3863675E
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 18:39:06 +0100 (CET)
Received: by mail-ej1-x63c.google.com with SMTP id hr21-20020a1709073f9500b007b29ccd1228sf10291767ejc.16
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 09:39:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669225146; cv=pass;
        d=google.com; s=arc-20160816;
        b=knZwyAKJVHAL1jxZtNt/i4IYHt8inRnpvSVTNU18XI2H44e0oxzMplLLw6wjJKWgZW
         Ei8WBEDMiU2F5Ws009HZ3knJO8+ip36LS4ZZsQOswvSCThGwzMwZ653kdbnNeXNPYcw8
         EPC1YBwiN6HoS6HiZ1Roy9GOw9tu6ig3r4Op3z3XI/1yloi0kT7KbYfXmHsD/CS9rmkB
         3eDjRuMztxNBVYdwExfCpTpxPBven5Fa+JA1edDmnLR0WVrCUzv5S0JnAifPOn5dAHH8
         wXpPS4Vs/RqDr0oiT+r2XkNTH4qs8qG+Ar2uzj+kRelIzAiTF96P+EPbuqm88bh5jgch
         J8GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Tvm676JepCgMSAx6VIfjx107rPIcWiZZnkQImsc7qDY=;
        b=YZLNk9FNK48xdlF25fEV0XVo1Hnb31LchNAHckxQcaHfmQlwotO9zQ+d5pIOS1f8Hm
         IciOUSnVmtlIDPrC/GbIj7PC/jZWXm9R0ntGNitDnQQcHFFWl76GLXl3PqznfIkxkbmP
         7u+N/iZ17NbltDAHEfiu1rqsT5JDw/H7L/YIBIcX/gkjRaOxnPKvh7SPNOI/f3be7Xh+
         420WrnRDGmtRE9c6rEAKPNreLHvisP90Yrd/W32XaXRsjLCtycxnygjPUTSvj38ZYb87
         zvMj3V9z5/xtnFKwRdhkEIs6Q68UQ4yTJ/r3KtquVanVu30QPuUoSESNdu0YpwGvfW1T
         lunw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FydYzUiv;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tvm676JepCgMSAx6VIfjx107rPIcWiZZnkQImsc7qDY=;
        b=MVDO+rtQfLUeic4rgpNS7/pdTN9H1yKWdn2X9GKc8HiBBiUN3Tm/UpCVU8Eiu0/yNG
         7+RfsaODLuOFOedL4Ep5vZ2zBZybsyUgrXeCaLvBQVWN9ro4KE33FvokJ6leWH7a4t6/
         QpVYq+e2QoEh6eASNsioHwEwz+x6ffGR7orSBVn+eXjuxTAkT8j2B4N67i8j0nloVmwB
         8eY5t1T9OkfwqVupK/TB9pyz4mTjvsoTkmUm/2nsLeALdKnXzDniICrtrdIEcuxa2uM/
         FfQtRLLfxVOqr1gpxt2VwjZpmZvuiy0Rx5PGbowuzeO74zFnwKqA9MHSMRWgyaDemxC7
         OoKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tvm676JepCgMSAx6VIfjx107rPIcWiZZnkQImsc7qDY=;
        b=V/rY/MlLGYQeteastWQzAgZJ4LxpHB4MLcq2EVZXhPBI/MRxVp34SqXYL4bDMTGq+4
         m/iYb7b3masH25zL2a5yn+nBD/OQUQcz1sFdzFr3+Jk0xqDsc0rPDBWNmr95D/USxM2p
         8qbtOuFFHiVgghuWvYBj6HMHuIXzRpynKupkvO407YXzJuT0f7Z5dSYSkxCTFlddWcw2
         pESTiSlpjbFhJX5slzYl22gdXoecKJtSht+01C+myg89lHkfNdQb0wiTs6apH/Hzym29
         mlsT3yexO2Wzgh8Upb2+/I5gJzEx6joStBZuf5sNpPEbdK6NI5ANlkpPFTJ0JJgnHM+J
         BNJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tvm676JepCgMSAx6VIfjx107rPIcWiZZnkQImsc7qDY=;
        b=JtTNLZI3RPHXRtYZUYHofvJDYFmBDDa2IJgxVmeL1hVLVble+uxQDB+EmFCSPGT2pO
         uznLDpSium9Qp5i6wyPte9YA3uFYI0CoIkD5f6oeVCzTFX2JHkH1qK9CP4j1lEwjDLCX
         fCzPeVUD4e0wlLY06ADFDyXiVdta0YXTFTPj7/5V0QBR3KYz4LggJeoIAUAFXkEDo51l
         QO7BuF8rt9LxIPbPLgielO+RMLTpijvXzLLiI/IDzEVjUujLAXMuINtwxlvC7znh6xsE
         9CfvOkNpdyIeOCaRNx4yk2gNaOS+48546BL+V7FsU4+ZHJlusV1+ya/vtIMWR5Iw/GjA
         G5Ng==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmS93MBAJDUFDztspYRW+r2QwZE9x2lgED2yTom2BvPm5fSbMLV
	n9BqOqm2wDAvrYop9ZEP9vU=
X-Google-Smtp-Source: AA0mqf4pdK+1sGcXVDz6oY3GSV3XbAbytvffzVGRdi4FLy4iVVIOfyoLL3lEjlpDh0oUbcbN9raAlA==
X-Received: by 2002:a17:906:95c3:b0:78e:975:5e8 with SMTP id n3-20020a17090695c300b0078e097505e8mr8490547ejy.82.1669225145922;
        Wed, 23 Nov 2022 09:39:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:cb87:b0:7ba:e42f:6f2e with SMTP id
 mf7-20020a170906cb8700b007bae42f6f2els204685ejb.6.-pod-prod-gmail; Wed, 23
 Nov 2022 09:39:03 -0800 (PST)
X-Received: by 2002:a17:907:8d02:b0:7ad:f43a:cb07 with SMTP id tc2-20020a1709078d0200b007adf43acb07mr937683ejc.562.1669225143405;
        Wed, 23 Nov 2022 09:39:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669225143; cv=none;
        d=google.com; s=arc-20160816;
        b=VwTRgHO2U3MKIIM2+dR6g2GQnK0PqHUSLRyYgUX6Q7raaAyaLpf8XoXspm1SqlSH4I
         0muEMiiXGb1Zu88rHIIgEK6ruV3V0xqxiXXQ0vbXHSyKkJfKgu78esWEsDAqJ3S75hHN
         iABcERe3Omr0Mb4HphE8YroyIexMdH2KKuRZAL9wcKeVW/Wa3IFcqqW3fYh3tMJukq9a
         aEp4GPTurS1Q1KQJTtwurElmYmV0xI7KOHl2RS6AOYfmja7Uo+7N+zxd4DiC7FbjQRf8
         rQJYQfeWtjSkfJ0shtV3RZXtFl26ANgVVFnNwQS31R49HAjLZ5l0ug3VRO1TutvcSmF1
         TcEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kY1l32BjvmTEjJLwJuMtTS3l+ptPCvj6BygkCcwmqdA=;
        b=fQPjGozBcxeJ+4o2w4/bcenL9R+CveALSXU2UHhT/DX3OzRIZKPNLT8g+Y38UFa35E
         BP47ZurZARuFCWkRdMLU/hktXM2JxayI+dZj7b+kwd92Chvsi6za4tellGpw79BNUb3V
         dFuOx8RODJAyJ4kPj5JTQVW+M14ZtzcFdQOfw6dJGS2Kl2OJHsp4KsCEl9ArzQkkjDTq
         zHzflx3IO3XXIj1YUssyfIvFj4BpG43uyq2IwTZVVeV168OV6b3xqGBJyXiL8rax4tCe
         juFxQi0vAbANVt9TofZOL7vAHHJ+Q+cvV0hNsVFrTa3dq33f93rhhoP4Rfg+J+KbcIYS
         3mHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FydYzUiv;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id e21-20020aa7d7d5000000b0046920d68fe2si540350eds.4.2022.11.23.09.39.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 09:39:03 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Received: by mail-ed1-x529.google.com with SMTP id z63so6816338ede.1
        for <open-iscsi@googlegroups.com>; Wed, 23 Nov 2022 09:39:03 -0800 (PST)
X-Received: by 2002:a05:6402:10c4:b0:467:7827:232 with SMTP id
 p4-20020a05640210c400b0046778270232mr27594712edu.268.1669225143120; Wed, 23
 Nov 2022 09:39:03 -0800 (PST)
MIME-Version: 1.0
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com> <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <717da158-5a7e-b478-61d3-3753b0b00e01@oracle.com>
In-Reply-To: <717da158-5a7e-b478-61d3-3753b0b00e01@oracle.com>
From: Wenchao Hao <haowenchao22@gmail.com>
Date: Thu, 24 Nov 2022 01:38:51 +0800
Message-ID: <CAOptpSMO5+Orp20S=WD-SezVOBEwJyKJSMjaCENN+4jXMX2X-A@mail.gmail.com>
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Mike Christie <michael.christie@oracle.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>, 
	Chris Leech <cleech@redhat.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, open-iscsi@googlegroups.com, 
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	liuzhiqiang26@huawei.com, linfeilong@huawei.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=FydYzUiv;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::529
 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Nov 24, 2022 at 1:29 AM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 11/22/22 10:41 PM, Wenchao Hao wrote:
> > Sorry I did not highlight the key points. The root reason we need to record
> > node_startup mode in kernel is userspace's node_startup mode is unreliable in
> > some scenarios:
> >
> > 1. iscsi node and session is created in initrd, the configure files of these
> >    nodes would be lost after we switch to rootfs
> > 2. someone do iscsiadm -m discovery but did not specify the operation mode,
> >    the iscsi node's node_startup would be updated to which specified in iscsid.conf
> > 3. someone do iscsiadm -m node -o update to update nodes' configure
> >
> > What's more, it seems "iscsiadm/iscsid" only refuse to logout of an ONBOOT
> > session when logout is specificed by "--logoutall". We still can logout an
> > ONBOOT session with "iscsiadm -m node -u comamnd".
>
> logout_by_startup does go by the startup setting, but I think you missed the
> session_in_use related code. It checks the mounts and holders already. Just
> change it for whatever you need. I think your lvm use case should be covered
> by the holder check. If not, add it.

I did not enable the iscsid.safe_logout in iscsid.conf, so the session
still could be logged out.
If tested with iscsid.safe_logout set to "Yes", the issue is solved.

Thanks a lot

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOptpSMO5%2BOrp20S%3DWD-SezVOBEwJyKJSMjaCENN%2B4jXMX2X-A%40mail.gmail.com.
