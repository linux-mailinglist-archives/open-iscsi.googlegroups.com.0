Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBRUAXKCQMGQETPYHLTI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0F6391D8C
	for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 19:07:19 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id d89-20020a25a3620000b02904dc8d0450c6sf2439345ybi.2
        for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 10:07:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622048838; cv=pass;
        d=google.com; s=arc-20160816;
        b=iWw4hC5wCf2VWDZ3slk6tIJy432/PLUOhTkt6QNObSZUWIzZfXBjvaS2uCv/tcyX5u
         f56zorhQaInyVOqdBe94Tk7GkiTH+qy3ZzCP7Xv7fWAWMnwXeO1s5pOatIT/5z/ORx0d
         IQwPiGTYM4TkTq33GRPX/fk1S5IPuKhiBvb8HFjmsaYlRBBv8DmFDAdv9LVR6NyqpAiv
         Y9dJAHGaYtiEaEC1R4EQUln7XZtx76NSaRbPSIGE5096NaTnJajQTyp0w7r44mtij5OF
         Dvd5PyqbN4BiZd7lRYJd4J+4vV3AxdWcU9bEwR4xWNxy35K4wm6qEEslrMT6kx7XYsKO
         ug8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=INtpEj9cvxWTDSL0brIcQtaXHttkZh/USHoUZL5qGCs=;
        b=UMDN+yw2S43M9SvQ3LJY923jjSRjt5dh7jeeVf+R7QZdoGemnqx5H2xxtSdfkuOBq+
         Y/clSK/cjNWtPV3nUsAW5UaE1oVVrfRR+F6tBQizPgDlej9NrSZmW4DvM1olX4UOclFO
         PrDTGP2I1csqkbhs5/NY6rFgU9NTOPjPo9qRqDcudh71lgGDX2FjDwjhU8Wm8rlkoIvY
         1jpUFI7VT+rYhdLtYFuik+Mf+YA79ORT4FTa2XFAdIWwEFyFDV00FpE3V/fYz7+ywZvO
         IZwvHk7gabUtjTd9ztN1sv3RvAxA5wvp0WC8phEZHWsZV8xZeCNoDu8YyNywFm+n60Am
         n0YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3nsJqcZ;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=INtpEj9cvxWTDSL0brIcQtaXHttkZh/USHoUZL5qGCs=;
        b=PfBnNhGtvQZ5lydwN4ZbK2HkV3g0x6BEiI7YMXbyFEX5YrQlKHROdGywW0CwMuxPTq
         5ivswomrZ0b+Wel0w7Rj9VcDezaoekkKSBkRFzhhvzPm64kN7zQFvyAt7O25yjeIY4G3
         b5R6nCJy7oyXWyBnXZk/y2CMeW7MHTxLIHfQO16KVLD5uZ+uFiAtluUte16O9EhhoVWH
         1JZhtSKOzzvph/tIlxX40HI3pHC8mNHOMJy5UONIYinb5mgbgH7Ho2EiWKAqMaT7xgnc
         Sk9YhcJRergyNLQBRMlsNU/SscmLd/tphmfzpkt/Wev+seJso8O1dR4VsF1lGB9S7dCh
         C8gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=INtpEj9cvxWTDSL0brIcQtaXHttkZh/USHoUZL5qGCs=;
        b=lYJ6B6TGENazl/fCLPtQRZf2Lhx+/fAn12+i8pSXSE+1lmDt2xHWR5E89DGg40ZEFC
         iFr2ArWZlB962dn6D4oGJ74opmS12phzBz6Q9XB9bJ+MV0sgVuZ9SZTCLsxhkiRW/DL4
         DVTYXnyoZ+jHm8pNQR+4/PMZIJ1G1/q+8TLGCrtwjgqJ8cse9rTJIrRZFPdDtKdaugkz
         5aH0EDbs85NXSiNf+Gc0ypD+xIZHvRh+EE+amSezFJeOLZpbkF3A9rzU/dJt6+Hj4lvR
         WUshL0X+FvkpWwtzoQtCscM8EcLcml6DeRqSPfFIRH/RuBAsuxvDyldvpFsixTgMo9Th
         yTYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=INtpEj9cvxWTDSL0brIcQtaXHttkZh/USHoUZL5qGCs=;
        b=maFIgnR0vEvIe3cgOlc24zSWtfoH8pZS6sQx+0c79jvSdnOBqDjBuke1LtQobwB+pm
         odqnQMLkc2opYzBSsvDmV+15xr9TqnUVNAvRvEb27Qg4HLImsQA8C76sZcnT6RQ7IKFQ
         s42x7LDplNE8WiKW3qeoHJtCebyjPlWbrWQge5FiZWpqGlZsNE4MAchaLJzjUNuQUaOB
         NQv7M5uopCZt58TOfFQrMQ17MbdzU4YICfx2VQ2P0CFAwpXF8HGzKqi0GO/xgeORP+1q
         Jzq6zllPxGRboaX/mR0ueEiGhSzXKoYCV4M7JtGi1jg/i3KWi9mdYpJjjNL7w6+ERoAm
         BhmQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533+HGvZq7cEQgTzWoXKKj/Y+Z+sFG/VTXRx+Xu71AD49HX8WCWL
	a66fiqHoSdOcfFFhQQcmxDA=
X-Google-Smtp-Source: ABdhPJwvX5hYKosroiQ3dPgU8aCwc0FNYtxWlZYqMTAA+CpVnrnnFr89zjVlv7KCYEz2Bza7A4+e7w==
X-Received: by 2002:a25:591:: with SMTP id 139mr26083757ybf.299.1622048838663;
        Wed, 26 May 2021 10:07:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls146692ybt.8.gmail; Wed, 26 May
 2021 10:07:18 -0700 (PDT)
X-Received: by 2002:a25:c0cc:: with SMTP id c195mr50931513ybf.171.1622048838079;
        Wed, 26 May 2021 10:07:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622048838; cv=none;
        d=google.com; s=arc-20160816;
        b=PAqNOD6Qjc/nIXEUblk+WW3Z9Yu64SoHIW0SV3TVh/4pU72FNljqYAPXFyEAmPbvjb
         5lvxifUdtoZ2DuIYJG/ire2NdmFNYgLAsWoPyur3+pKqzcy4MS+pv2rGZpb4j06flz2m
         nTjhxMAJIWvCL8riFpTECQiM8iiQcyY05gjtMeYTUSA7QlS0lhfCEsKgFYkrE4YMZnoZ
         grWQgQo1liQlP7A84Dmj6DIUkyKWOEGP0aJXfl/QaU1Kss8g/9MSscecQPP0UVuPQnZy
         SQuNgqibIZY+1swMsoX+wjmRsjfkeZypAjPE9swqi6eH80E5n+FjPJQqWAiLbTmkvHM4
         DdZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=xnS4gcr3nhPXhVSWMS5xTeJicVaqbCQSp4BFu5nHGVM=;
        b=Yubgi1kM6nK8oxbK4iqmkH5XZkHHxhHHJ1uaefynJNX1o8JMQS4ZyJgaaUYjdZkA3T
         PoQret6HI1hZSfXC+pfVmOzHuTHLTWhPD4EqT+2FYso+UAHv7NxLP/oZCeHBrPZBl5fT
         UVH4/IWshO0v642/UODmGX/kw9QEk8IndWEObqebE0zmkBco6lBYKTADfgc7d6jMNOM1
         SuUVLudFKMY1IXibWd4G7wsmApyQphX2F3OhS7gIHANWc1r40EapCizsBBl4ZFFWlc0f
         7CCqVeR9n5r9kpITke6xSJAmj+njcDdbdarOTx2iuFStclvAAoSvn219OG9Z/3Iz/bOo
         ALSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3nsJqcZ;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id z5si2030917ybo.3.2021.05.26.10.07.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 10:07:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id a6so1818167ioe.0
        for <open-iscsi@googlegroups.com>; Wed, 26 May 2021 10:07:18 -0700 (PDT)
X-Received: by 2002:a05:6602:1223:: with SMTP id z3mr26660286iot.97.1622048837574;
 Wed, 26 May 2021 10:07:17 -0700 (PDT)
MIME-Version: 1.0
References: <92ea6c0d-de4b-47f0-95c3-d22257089eban@googlegroups.com> <086c0e6e-4df9-409c-80a4-d611fd36a363n@googlegroups.com>
In-Reply-To: <086c0e6e-4df9-409c-80a4-d611fd36a363n@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Wed, 26 May 2021 13:07:05 -0400
Message-ID: <CAK3e-EYB3NurR6MzAzf2WBRUMDiKKbH23w3OFF8u86zW-nRj-g@mail.gmail.com>
Subject: Re: trimming iscsi luns?
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c5a55c05c33eac20"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=d3nsJqcZ;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000c5a55c05c33eac20
Content-Type: text/plain; charset="UTF-8"

Hello,
 It is also the OS/filesystem that must support the TRIM or UNMAP command.
I.e. in EXT4 you have to set the option 'discard' when mounting a volume to
support TRIM/UNMAP feature. Using something like 'fsttrim'

 If your backend storage is RAIDed then typically any SSDs are not
presented as SSD/FLASH drives to the host. Physical drives are virtualized
by the RAID controller and LUNs are presented to the host.

  Once the TRIM/UNMAP command is sent  it's up to the backend storage
device to handle that properly.

 Open-iSCSI itself is the transport to the target from the OS.  It does not
initiate TRIP/UNMAP or any other SCSI commands on its own.  It will pass
along those SCSI commands the OS sends and send back all results.

 Regards,
Don





On Wed, May 26, 2021 at 10:33 AM 'H. Giebels' via open-iscsi <
open-iscsi@googlegroups.com> wrote:

> I think I've got it. It is the emulate_tpu parameter on the target side.
> Needs some more confirmation, though
>
> H. Giebels schrieb am Mittwoch, 26. Mai 2021 um 15:26:39 UTC+2:
>
>>
>> Hello,
>>
>> not exactly sure, wether this is an issue of targetcli or open iscsi. The
>> target lun is a sparse file, and I would like to be able to trim that lun
>> to reclaim free space. Think thin volume on a file backend.
>>
>> Now iscsiadm -m session shows me (non-flash), what I suppose is the
>> reason, why I get an operation not permitted error when trying to so so.
>>
>> The manpage talks about a flash node, but it is nowhere explained, what
>> that is and wether this is related to flash storage at all. So maybe there
>> is some documentation about the terms used?
>>
>> But primarily I would like to know, wether the information about the
>> trimability is a matter of the target advertising it or wether this has to
>> be defined during creation of the lun on the client side (-o new).
>>
>> Thanks
>>
>> Hermann
>>
>>
>> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EYB3NurR6MzAzf2WBRUMDiKKbH23w3OFF8u86zW-nRj-g%40mail.gmail.com.

--000000000000c5a55c05c33eac20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0It is also the OS/filesystem that m=
ust support the TRIM or UNMAP command.=C2=A0 I.e. in EXT4 you have to set t=
he option &#39;discard&#39; when mounting a volume to support TRIM/UNMAP fe=
ature. Using=C2=A0something like &#39;fsttrim&#39;=C2=A0</div><div><br></di=
v><div>=C2=A0If your backend storage is RAIDed then typically any SSDs are =
not presented as SSD/FLASH drives to the host. Physical drives are virtuali=
zed by the RAID controller and LUNs are presented to the host.=C2=A0=C2=A0<=
/div><div><br></div><div>=C2=A0 Once the TRIM/UNMAP command is sent=C2=A0 i=
t&#39;s up to the backend storage device to handle that properly.=C2=A0</di=
v><div><br></div><div>=C2=A0Open-iSCSI itself is the transport to the targe=
t from the OS.=C2=A0 It does not initiate TRIP/UNMAP or any other SCSI comm=
ands on its own.=C2=A0 It will pass along those SCSI commands the OS sends =
and send back all results.=C2=A0</div><div><br></div><div>=C2=A0Regards,=C2=
=A0</div><div>Don=C2=A0</div><div><br></div><div><br></div><div>=C2=A0</div=
><div>=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, May 26, 2021 at 10:33 AM &#39;H. Giebels&#39; via=
 open-iscsi &lt;<a href=3D"mailto:open-iscsi@googlegroups.com">open-iscsi@g=
ooglegroups.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">I think I&#39;ve got it. It is the emulate_tpu parameter on =
the target side. Needs some more confirmation, though<br><br><div class=3D"=
gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">H. Giebels schrieb am M=
ittwoch, 26. Mai 2021 um 15:26:39 UTC+2:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br>Hello,<br><br>not exactly sure, wether this is=
 an issue of targetcli or open iscsi. The target lun is a sparse file, and =
I would like to be able to trim that lun to reclaim free space. Think thin =
volume on a file backend. <br><br>Now iscsiadm -m session shows me (non-fla=
sh), what I suppose is the reason, why I get an operation not permitted err=
or when trying to so so. <br><br>The manpage talks about a flash node, but =
it is nowhere explained, what that is and wether this is related to flash s=
torage at all. So maybe there is some documentation about the terms used?<b=
r><br>But primarily I would like to know, wether the information about the =
trimability is a matter of the target advertising it or wether this has to =
be defined during creation of the lun on the client side (-o new).<br><br>T=
hanks<br><br>Hermann<br><br><br></blockquote></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://g=
roups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%4=
0googlegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EYB3NurR6MzAzf2WBRUMDiKKbH23w3OFF8u86zW-nRj-g%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAK3e-EYB3NurR6MzAzf2WBRUMDiKKbH23w3OFF8u86zW-nRj=
-g%40mail.gmail.com</a>.<br />

--000000000000c5a55c05c33eac20--
