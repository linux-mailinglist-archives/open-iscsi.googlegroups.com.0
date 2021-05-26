Return-Path: <open-iscsi+bncBDAKBNEQZYKRBU5YXGCQMGQEENYLZ2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D66C391A4D
	for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 16:33:57 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id z2-20020a3765020000b02903a5f51b1c74sf898375qkb.7
        for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 07:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1y504gaUkBmUaxcZOEpDROeB9MyWdjugU7IP54CFpFo=;
        b=Ern9yxYAwtamvh03U7aIvXi66D5mA15Ls3Ba+ErIrpDfs5UmvQ7/CaiQu6tYZLkLm7
         Z268BXvywbnMb6eAchHOazmJSZvbQgS3hJAluxzaeN81Whqm+RTKAg5fGhsVHfhf9foz
         I6NJTumMHZ4OC0okbWWxLc69ondcv8MFFqXZC2AX4AL9zk5/XdC5bgxOeYtFRPgnGzng
         L4C5JFlV9sPztawtqRiuK3xmhCeu+1ULW7uHnzPRTqRTA9jqJLomjqKEsvcXF9idaeCh
         465tF1KJrs9jndGBNaVzXhniUAmyx6LXa5Xd5bpQb6L8bynwDvYyCrStv7gNT8j9w/lo
         ioiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version:x-original-sender:reply-to:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1y504gaUkBmUaxcZOEpDROeB9MyWdjugU7IP54CFpFo=;
        b=WmlNlVCh1Jbg8JMOgbuzBhy9tsakFu7zXwqbJ8jrJrk+xgVNg9Szc1i+dH6bb2Z6q5
         IgQ5WwO9zAD8b4vFifOXR2hRMCxrsF2UkXyitz7xoVkHDf5X3ah/xqbe+wD3bHNcXWWV
         2y1aVPGmzH7pOtpNYeHF/Viy7aZ3sI5KqHVFpOpriKW3ZHoAtuMki71JITurmNWUyy3H
         N2KTsJ4BViBRIs2ZxxJ54/v96vQyDGd9J1pGRfbfK8IAZtjFnKhg4lwzitE7mmvATsvD
         EhNI7wi3IVlkL1o9hITipeldGyi5glxdGbHvLNYTnz6BaJc9O/GMGqzSc881hkT0qYpN
         b7Lg==
X-Gm-Message-State: AOAM531WQP+x8C01xgIR4iyJ1pklfoHF1DK+thMuOVYuhu4o2daJeTSI
	Sf1VS1s7PiZwm9qBL111/pk=
X-Google-Smtp-Source: ABdhPJzaz8mRpftCyCE9/RfdR8h1KcChyv5ryUb1CA7KiVOTRcgUVSE8gtioxiaRMtjzg2HnnbUidQ==
X-Received: by 2002:a05:620a:13d2:: with SMTP id g18mr40862222qkl.233.1622039636059;
        Wed, 26 May 2021 07:33:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:42af:: with SMTP id e15ls37668qvr.5.gmail; Wed, 26 May
 2021 07:33:55 -0700 (PDT)
X-Received: by 2002:a05:6214:20c4:: with SMTP id 4mr43975433qve.38.1622039635443;
        Wed, 26 May 2021 07:33:55 -0700 (PDT)
Date: Wed, 26 May 2021 07:33:54 -0700 (PDT)
From: "'H. Giebels' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <086c0e6e-4df9-409c-80a4-d611fd36a363n@googlegroups.com>
In-Reply-To: <92ea6c0d-de4b-47f0-95c3-d22257089eban@googlegroups.com>
References: <92ea6c0d-de4b-47f0-95c3-d22257089eban@googlegroups.com>
Subject: Re: trimming iscsi luns?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2800_1192721056.1622039634623"
X-Original-Sender: pinguinpunk@googlemail.com
X-Original-From: "H. Giebels" <pinguinpunk@googlemail.com>
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

------=_Part_2800_1192721056.1622039634623
Content-Type: multipart/alternative; 
	boundary="----=_Part_2801_116791390.1622039634623"

------=_Part_2801_116791390.1622039634623
Content-Type: text/plain; charset="UTF-8"

I think I've got it. It is the emulate_tpu parameter on the target side. 
Needs some more confirmation, though

H. Giebels schrieb am Mittwoch, 26. Mai 2021 um 15:26:39 UTC+2:

>
> Hello,
>
> not exactly sure, wether this is an issue of targetcli or open iscsi. The 
> target lun is a sparse file, and I would like to be able to trim that lun 
> to reclaim free space. Think thin volume on a file backend. 
>
> Now iscsiadm -m session shows me (non-flash), what I suppose is the 
> reason, why I get an operation not permitted error when trying to so so. 
>
> The manpage talks about a flash node, but it is nowhere explained, what 
> that is and wether this is related to flash storage at all. So maybe there 
> is some documentation about the terms used?
>
> But primarily I would like to know, wether the information about the 
> trimability is a matter of the target advertising it or wether this has to 
> be defined during creation of the lun on the client side (-o new).
>
> Thanks
>
> Hermann
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.com.

------=_Part_2801_116791390.1622039634623
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think I've got it. It is the emulate_tpu parameter on the target side. Ne=
eds some more confirmation, though<br><br><div class=3D"gmail_quote"><div d=
ir=3D"auto" class=3D"gmail_attr">H. Giebels schrieb am Mittwoch, 26. Mai 20=
21 um 15:26:39 UTC+2:<br/></div><blockquote class=3D"gmail_quote" style=3D"=
margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-lef=
t: 1ex;"><br>Hello,<br><br>not exactly sure, wether this is an issue of tar=
getcli or open iscsi. The target lun is a sparse file, and I would like to =
be able to trim that lun to reclaim free space. Think thin volume on a file=
 backend. <br><br>Now iscsiadm -m session shows me (non-flash), what I supp=
ose is the reason, why I get an operation not permitted error when trying t=
o so so. <br><br>The manpage talks about a flash node, but it is nowhere ex=
plained, what that is and wether this is related to flash storage at all. S=
o maybe there is some documentation about the terms used?<br><br>But primar=
ily I would like to know, wether the information about the trimability is a=
 matter of the target advertising it or wether this has to be defined durin=
g creation of the lun on the client side (-o new).<br><br>Thanks<br><br>Her=
mann<br><br><br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/086c0e6e-4df9-409c-80a4-d611fd36a363n%40googlegroups.com</a>.=
<br />

------=_Part_2801_116791390.1622039634623--

------=_Part_2800_1192721056.1622039634623--
