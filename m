Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDU472NQMGQE3MSKDBI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1690F637D07
	for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 16:30:25 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id bl21-20020a05620a1a9500b006fa35db066asf2362135qkb.19
        for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 07:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U5HijPYsWchT7vZHpFZCqcSVMy/hUFqbS7x2mnYKd3U=;
        b=SH91hxXPj7WtFuX+xUlBD+LqA2BEHbIdgP+mUt+OpCZAbt7cC0hqFmtSYCqujGM6hU
         nqxrTje4glAMWnavyOkOzV69OhCTXLFhqcMd85sC2nHMKJ5eWQb/xKBRUSXYPQODNLg8
         oU591Km7RG2ofacGxQW9d9pE6Oiu1yO5Yequh/qcPcCtFPBDaWHLQjBivptvJEBtdlI4
         HxSAutSFINLY+hF7ks7DwZ23GoltL6iTUWy7bUBeB9FXksEn7yOnpIMCjYIBKIxfMu4D
         8Ho2Ok4lQ/MwIYNMiyOihuv/KaHu23ifDSOb0F2qNsj9jtwxfq5+9dPnK/XYYt/+S3Dt
         wDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U5HijPYsWchT7vZHpFZCqcSVMy/hUFqbS7x2mnYKd3U=;
        b=WGYXQNGcVycMMo3nrv2YuaiJDv8Sli1XV8x/F+tKrZmIqt1Os2FnRiF+bypmrLO1sv
         YhrFt70Z0XKwB462vgou9IMy4lcYBzqhWmAkPQ/bnV37bq2H/gzupb7bw3nTzhC+Uh4+
         02q3ZpW3vZiJGLCxUt85CTZiA63vhG/VTUvhSWnjGPg1NiyrhoisibW9hcWm/YvHavpp
         2n9PAdazdJOd+P6GAl+AQ/EGOuhbkvYcPTCnwZlt5wc2/xXiBwTOSBWhOiPiUstnTEYp
         cXcnqgaty1KXdfREe9jGJgGBTWLHYMDymjqKAUt7igGpw3zi7gObqqfJ6CcQxkK18WHI
         bpZg==
X-Gm-Message-State: ANoB5pmc8dPFx1vv2WEmhPLuK4SmVB4bw+QJveyahpzuMl0qyPLg6+pV
	8MdX0M5GL79fK1MqfYhe0ng=
X-Google-Smtp-Source: AA0mqf41SUN1C8OXvHciloituX/cIj+MMAZ9wUyZv4B2zVtRQO28kBRIOPUUIpNkq/ccoC6EVHmhlA==
X-Received: by 2002:a05:622a:4d94:b0:3a5:fb6c:d96a with SMTP id ff20-20020a05622a4d9400b003a5fb6cd96amr31554965qtb.185.1669303823810;
        Thu, 24 Nov 2022 07:30:23 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:e44c:0:b0:4a7:a1d5:c30f with SMTP id d12-20020a0ce44c000000b004a7a1d5c30fls906339qvm.8.-pod-prod-gmail;
 Thu, 24 Nov 2022 07:30:22 -0800 (PST)
X-Received: by 2002:a05:6214:370b:b0:4c6:84ce:2740 with SMTP id np11-20020a056214370b00b004c684ce2740mr15556630qvb.7.1669303821839;
        Thu, 24 Nov 2022 07:30:21 -0800 (PST)
Date: Thu, 24 Nov 2022 07:30:20 -0800 (PST)
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n@googlegroups.com>
In-Reply-To: <637F4209020000A10004FF7D@gwsmtp.uni-regensburg.de>
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <637F4209020000A10004FF7D@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] Re: [PATCH] scsi:iscsi: Record session's startup mode in
 kernel
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4906_2100839721.1669303820678"
X-Original-Sender: haowenchao@huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

------=_Part_4906_2100839721.1669303820678
Content-Type: multipart/alternative; 
	boundary="----=_Part_4907_917703110.1669303820678"

------=_Part_4907_917703110.1669303820678
Content-Type: text/plain; charset="UTF-8"

On Thursday, November 24, 2022 at 6:06:09 PM UTC+8 Uli wrote:

> >>> "'Lee Duncan' via open-iscsi" <open-...@googlegroups.com> schrieb am 
> 23.11.2022 um 17:47 in Nachricht 
> <0f7258d5-ff8e-fa4e...@suse.com>: 
> > On 11/22/22 20:41, Wenchao Hao wrote: 
>
> ... 
> > Again, I don't believe that's correct. I will test it. 
> ... 
> Maybe a session capture (via serial line or so) to show real facts would 
> be helpful for the discussion.


Sorry, I can not understand this, could you describe more detail?
 

>
> Personally I think that information the kernel needs to continue working 
> (e.g. the mount table) should be in the kernel. 
> Maybe user-land tools can manage the info there (in the kernel, via API), 
> but the primary source should be the kernel. 
>
> Regards, 
> Ulrich 
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n%40googlegroups.com.

------=_Part_4907_917703110.1669303820678
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursd=
ay, November 24, 2022 at 6:06:09 PM UTC+8 Uli wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid r=
gb(204, 204, 204); padding-left: 1ex;">&gt;&gt;&gt; "'Lee Duncan' via open-=
iscsi" &lt;<a href=3D"" data-email-masked=3D"" rel=3D"nofollow">open-...@go=
oglegroups.com</a>&gt; schrieb am
<br>23.11.2022 um 17:47 in Nachricht
<br>&lt;<a href=3D"" data-email-masked=3D"" rel=3D"nofollow">0f7258d5-ff8e-=
fa4e...@suse.com</a>&gt;:
<br>&gt; On 11/22/22 20:41, Wenchao Hao wrote:
<br>
<br>...
<br>&gt; Again, I don't believe that's correct. I will test it.
<br>...
<br>Maybe a session capture (via serial line or so) to show real facts woul=
d be helpful for the discussion.</blockquote><div><br></div><div>Sorry, I c=
an not understand this, could you describe more detail?</div><div>&nbsp;</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-l=
eft: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<br>Personally I think that information the kernel needs to continue workin=
g (e.g. the mount table) should be in the kernel.
<br>Maybe user-land tools can manage the info there (in the kernel, via API=
), but the primary source should be the kernel.
<br>
<br>Regards,
<br>Ulrich
<br>
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n%40googlegroups.com</a>.=
<br />

------=_Part_4907_917703110.1669303820678--

------=_Part_4906_2100839721.1669303820678--
