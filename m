Return-Path: <open-iscsi+bncBDHNJVU4QYDRBSG4VLYQKGQECSPMYDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 274D914798D
	for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 09:43:53 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id v1sf424600lja.21
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 00:43:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579855432; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMkJmxhTvmlAVeb9UH7d6bTyHh1ZqECGof2q0SjYZ5E4ugrSJRhNW+zeQehrlwbLqr
         uH2TEQo7RchACq90Cd2TThvNrBulHlHScmOaaap9VvCa60/EPeXjZx9H7vRcVWthxQ2S
         Gf3lhikFxvQKGF1nMtnLaLp7YwyrB4xvk7fPOGEVvBg2tJbBTiqKfKc+j1o5auJlD1NT
         YbIzOxlY70/8oLG32sYRlXedMefg+hnPgn5v0ihbVLbLa2V8lk/RJHY6sejverjINvEI
         DFAtNDRiW6m0k7QJKudlWzmMEpnaCuqPxcuuN9wEqYD0SrxTeZoJ7rKv8S4z2Q/JX7Wp
         jkEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature;
        bh=50n6iZjeg1rcqXgZLppOaw+DpCpsLYuaih1y8MYUSj4=;
        b=IvhbDZhciU9e7c+5Ukg4nco30Js46r1N1eLX7tYtDcKfF8x7/Zr9KJD6SIcbabp8t7
         8rWUV1+86ejFiQ/DWJX+ou/FYhv75O3MuTijrvKMNE+5jgt+W6G9Ws2FZjlaxUabCm4q
         BwrQZaD5EgKOxEdcxdzAbhD561zYIxyiCZW8NbzOEwf3i4n99ZBUqqUTBL0pxtBGL6wL
         tmK9AwkGxVnaPDD6akL076XjrwKT2ISWSkom3PBTqLvJLQZmnnf2XiJfCY0Jfwp7RDX6
         q1CH1kBpKHiUNRMpSfjxVBB2SQDG7VX0y/oX5ZJJbHXlncXsi30k/DKg6W9qqKS0h7vL
         oPGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vst@vlnb.net designates 217.72.192.74 as permitted sender) smtp.mailfrom=vst@vlnb.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50n6iZjeg1rcqXgZLppOaw+DpCpsLYuaih1y8MYUSj4=;
        b=UJYdYz8z0m3UQOnw0mC5zB1PBOxpF8Us57jVxidLshYXXusMq7btoTK+uLsDfMwtVs
         o4zXqYVu3CP+/Zy+v8ugMmMsO+BzcDoDTKJHnHyixzSqTTk91rlW2DOJuvX+RnqgW47B
         Haj0+Fwvpy8CsfvdldYiXYF0gGn9xdsyM70j22b0L7adkSQDencQ7XPTBWMJUrsKk7bp
         64ZVNuRyfpoC0EdhYyFEqUnOWjknjNr5rjwXyUwIln+eqJskMJmSyPhMABHrb29WQXPd
         XRDzhYREL3kyw7IUawB+VD+yLyA4knJyHxXpoPyR7EHL1qG5GZVu01Rd+tt2gl/Msptp
         UJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50n6iZjeg1rcqXgZLppOaw+DpCpsLYuaih1y8MYUSj4=;
        b=C2OHoV5E/lZ9Jlnk4/gYEu7jA5drb8oDrCNPdEGb22gQrxnB4qfDm09ozPCOsSyDyZ
         uAs6UppJEP9iLUGxM8p9oqvoRe8k+Z7FrFfGK/adJCtnOKhnJl9GflaXnypzGcJbp2H7
         iayD/GpcQfXcsSrQCePVjHUJmaPJsTiGB0z1gMjg+AuwmW1j3ya+Fxc5Ovm9uSUVzgBu
         nngp2EKtRZAmFubO7c2NgqerOhnxnviFDnWEiTUOUWP28wUvN4ukUV3Ad1DmYwOMYirb
         8GCM/Q/FnAPISLryrBYAw1n7XnDuzcDAf8I0ieoqukwytGnWqW/Ll4Ltgw13gyrBjaq/
         K7mA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVoJdXu9mP1hCFe0dNBmBVPyBFdno5GkiVBNar3xedPL+r2/AhB
	1kwBEe2pyqawnVFImpdPXzo=
X-Google-Smtp-Source: APXvYqykq63QkqWdR2NcW5ge3BGABe+M4VKPd4L72i2eiEmxyrN5qejQw/zPCxnMo2oLhwy3jSG1TA==
X-Received: by 2002:a2e:8651:: with SMTP id i17mr1642394ljj.121.1579855432468;
        Fri, 24 Jan 2020 00:43:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9c85:: with SMTP id x5ls299433lji.0.gmail; Fri, 24 Jan
 2020 00:43:51 -0800 (PST)
X-Received: by 2002:a2e:7816:: with SMTP id t22mr1591035ljc.161.1579855431625;
        Fri, 24 Jan 2020 00:43:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579855431; cv=none;
        d=google.com; s=arc-20160816;
        b=uMLDhVR5MSBZKgSftVtzccotj0ADnxx4Alop635//uIQridRqP+wtjKPwwKhkrnk5b
         RIIpXNzXiHLLt5GxcDlrawaxMaBf0AO24ADWOZvcTcmEutLJ6R4S6Zhbqk12Sb2Gn1OI
         AkWtyK6OJKcTIKjvjgGYZ1lhBT1ODtFq89ltJUd/zEVzozJC8sgScNen99nGtquBCyax
         4aq3OnPm4REsyhstFIwwgCDoi6V6S5E2Q8SoVp0HIw1tuDthWOHklCX8qZW0NZxACFy5
         ovFtC8l9DNyEQFgZrAxKY60iOXrTjPBfTvlHZpQCmt29gqCMwB8DQnWuiBUHwVhD2+yQ
         quwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=YCEEEAmmBqS/CuKnJ1HJDZU7/59SOCLNSkOgc47G1mc=;
        b=IYVQojOLWgl7h+7tGQr/GZBejeTeRASm/fd5bCCjhVA6+NsgleJWgKi44/3YhP48I3
         rxNIlDb7TxyynkluOKDXXZ/tJa0b/6jUjnd5IzVZZjHx1nQQ597xY8C15+8GK/tMb6cH
         2OSieZ7tY02wIWqPl4hw+AgBJrtUGy+h+HwelS8gWuX5RPPKwS2iG38pMSzolGSulnFC
         +3HRdW9Ri5D0kT82coiDNZy9WnPf4Nt4musPcckfGa2WhXpqHCzcC5jFmxl3JMzOITRu
         aMOLMaxQjwx6Ub0EmNjceqRodod701J6ofQ4RvmExbtUtszwUHNvJHwnik2QDEVUSy6F
         NkUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vst@vlnb.net designates 217.72.192.74 as permitted sender) smtp.mailfrom=vst@vlnb.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id 68si179826lfi.3.2020.01.24.00.43.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 00:43:51 -0800 (PST)
Received-SPF: pass (google.com: domain of vst@vlnb.net designates 217.72.192.74 as permitted sender) client-ip=217.72.192.74;
Received: from [192.168.1.83] ([108.201.190.22]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.179]) with ESMTPSA (Nemesis) id
 1MfpGR-1jWSNg3MUL-00gHYs; Fri, 24 Jan 2020 09:43:50 +0100
Subject: Re: iSCSI Multiqueue
To: open-iscsi@googlegroups.com, The Lee-Man <leeman.duncan@gmail.com>
References: <fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1@googlegroups.com>
 <8f236c4a-a207-4a0e-8dff-ad14a74e57dc@googlegroups.com>
From: Vladislav Bolkhovitin <vst@vlnb.net>
Message-ID: <1a730951-21eb-ae5f-a835-ad92c512978c@vlnb.net>
Date: Fri, 24 Jan 2020 00:43:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <8f236c4a-a207-4a0e-8dff-ad14a74e57dc@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:cQJo6I/85dhlj7I6LeXtLHoz+QF41LW6ej1FgTPLdsyAiZ/YWwH
 S0V+QoD1MWSUf3LOErd71QmEnnoXWFBb7aswH79Dlm1Vvg95HJ5vouFjZkcBuHaMhV3JDSz
 ctuMCgHbWmBUQJz/kUsPezMpaRtQAso58ZJUygnCuhH/6DDL3yPt1fGeIY2EA+CG1OGxCOe
 FnU5SSGQ3IODTtDN977nA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W0iDW+7rezY=:pfwN4ND1M/RdCaAVdZfvu1
 3xRrofT5zKtefLkmtHFrWfEvsXxuXE2rTobYa0c1ZGcRw3mD1rFuwxloXtua2NyHw14vqYL/b
 NqgUqzsg7SMI3lceU96fNdcsLfTWsTYqqdF7FXZPQADfwQzNC+6xhV4ywbrdBPdIjRquFqZEC
 1/sMlBJjjVN04hgHwaF+kaorovYVKR9o8WrzSjgv7inK8RFq5ti71TQG9sdqEIgKZaoeGf8V2
 9qQdQoSxknfuc7rIWs7SRlJ1XPGM1aU7cd0kFRHv667IHsJaVJPHRSUutVjABro+2vA0UzLDC
 ZmVhDf7CoSLNY7WfKBodGxCCNzx8nF44/liivJKUqRFODY6QUOplC+jEvz36o+L/ZuBqC2J/U
 3XGMoVqASloXlR98hF8fCY3fntc3saBouGAW9mjA35I32yo3VoTSgc/caWP1d3+ftnn9TKSvW
 HkLa8wbMhkSAWafFvG46oUI9v50Ep6MyWEo27kiIdNjIT6BMzyqXqN6x006T74ZQNxyvdoMHf
 5vG+yyXe32bH5ps5ela/2WFSgo7IF34uYXZ1NRrSLoV/2ZNUkDA/Ot9MMtb0W/IU3OUZ9jG/k
 rdUgEJxlXtsvRSWxdtjFKp7su9rxTReP82Lk/0YBW4Mb994eo31RzV4l1SOnNXSuYb2CqwiV3
 FDCIySdyVoOeBiv55D2Bc27QQSRTmvjo+w8YeaSKd+WOEifUDK5tJ3kz2HocGrZvJ39t5aX+9
 T48edjtfg3Qv/v4Usexd4jIeABAeU3FG2z6Tg4iu+6gwaKIzY3hrtPID+e3sh6M3dW7VM6W2N
 W9J9brWQxP6IW+rAueDoulgggeBdrCX5ViiiykWVpopUbudll4=
X-Original-Sender: vst@vlnb.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vst@vlnb.net designates 217.72.192.74 as permitted
 sender) smtp.mailfrom=vst@vlnb.net
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


On 1/23/20 1:51 PM, The Lee-Man wrote:
> On Wednesday, January 15, 2020 at 7:16:48 AM UTC-8, Bobby wrote:
>=20
>=20
>     Hi all,
>=20
>     I have a question regarding multi-queue in iSCSI. AFAIK, *scsi-mq*
>     has been functional in kernel since kernel 3.17. Because earlier,
>     the block layer was updated to multi-queue *blk-mq*=C2=A0from
>     single-queue. So the current kernel has full-fledged *multi-queues*.
>=20
>     The question is:
>=20
>     How an iSCSI initiator uses multi-queue? Does it mean having
>     multiple connections? I would like=C2=A0
>     to see where exactly that is achieved in the code, if someone can
>     please me give me a hint. Thanks in advance :)
>=20
>     Regards
>=20
>=20
> open-iscsi does not use multi-queue specifically, though all of the
> block layer is now converted to using multi-queue. If I understand
> correctly, there is no more single-queue, but there is glue that allows
> existing single-queue drivers to continue on, mapping their use to
> multi-queue. (Someone please correct me if I'm wrong.)
>=20
> The only time multi-queue might be useful for open-iscsi to use would be
> for MCS -- multiple connections per session. But the implementation of
> multi-queue makes using it for MCS problematic. Because each queue is on
> a different CPU, open-iscsi would have to coordinate the multiple
> connections across multiple CPUs, making things like ensuring correct
> sequence numbers difficult.
>=20
> Hope that helps. I _believe_ there is still an effort to map open-iscsi
> MCS to multi-queue, but nobody has tried to actually do it yet that I
> know of. The goal, of course, is better throughput using MCS.

From my old iSCSI target development days, MS is fundamentally not
friendly to multi-queue, because it requires by the iSCSI spec to
preserve order of commands inside the session across multiple
connections. Commands serialization =3D> shared lock or atomic =3D> no
multi-queue benefits.

Hence, usage of MS for multi-queue would be beneficial only if to drop
(aka violate) this iSCSI spec requirement.

Just a small reminder. I have not looked in the updated iSCSI spec for a
while, but don't remember this requirement was anyhow eased there.

In any case, multiple iSCSI sessions per block level "session" would
always be another alternative that would require virtually zero changes
in open-iscsi and in-kernel iSCSI driver[1] as opposed to complex
changes required to start supporting MS in it as well as in many iSCSI
targets around that currently do not[2]. If I would be working on iSCSI
MQ, I would consider this as the first and MUCH more preferable option.

Vlad

1. Most likely, completely zero.
2. Where requirement to preserve commands order would similarly kill all
the MQ performance benefits.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/1a730951-21eb-ae5f-a835-ad92c512978c%40vlnb.net.
