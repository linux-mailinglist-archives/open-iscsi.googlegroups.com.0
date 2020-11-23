Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBQOZ5T6QKGQESMERHUA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D822BFEB8
	for <lists+open-iscsi@lfdr.de>; Mon, 23 Nov 2020 04:30:10 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id q8sf7574951otk.6
        for <lists+open-iscsi@lfdr.de>; Sun, 22 Nov 2020 19:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gz0FPSEuLFZ55fBzwpmOh9yYyePBEefcxnouUvS8sMM=;
        b=ro4M3sTpqVI9TMguuEeu13V2KLNXnbGOHUpkwnf50wYzc41XgTS557K2zka4EJI3TZ
         ixUnZ9OdkvqtxYKAzu+z8fnat4HSgDS/mE8j1u9p1aESYImeQS6PQBwb4wxJaVv4QU7b
         hz9v1vUZYM3Hp149xdvBHL6FF22MrCkXzEKg6cIRO8eRVeGvS+hmJ5W46RzGFFAJM803
         tkz9gNANoApsqmpsyRakhhNETL2XnUxZHga2hTpgNvO8bh68ZpGZbohY4jAyFkVQWDoR
         8fyQna6U5gGzITZzCtYOvgZpkjoAq0sArcZLeFTIWVNTWpz5pnBDWMmfbB+VjN9cMWEf
         bWfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gz0FPSEuLFZ55fBzwpmOh9yYyePBEefcxnouUvS8sMM=;
        b=oT6gzqwSK/H4K2Ai1MaHY4H9fta6y03hFjs8lsCEK26siHn0M9ewDU68rcL8dmvRv3
         vZzsoj1fgJQm5kFeCs6UenURFws6FJ36Gh6xCpHhIXK8OESAUfkpdWPDVOUjq3SDB9+F
         gwhnyqa7Bt+ODiQMXzddzZgcVvkOkDeZuOL07ApwRE/AbYv/HSto1kOMYHVmzDd3VQwY
         o/so6eTWe2Wnpk4WUiZugsKtJlKZcx+8xVUOj5ilvRx34oxechvgkNlQ47et92GmKjsa
         kSGujSG18KXExb4koafzk7NAi0A2iW/nQIlAPmWUoa3uIo7oeKLkTSbXcs6NbBA9mEAb
         UMfw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5314EcGtJDvRT+HnXg+2cw5NCnSbHiaPKLsU7uJibqZ7ACbki3gp
	W8YyWSMUTHccowniQuwROWc=
X-Google-Smtp-Source: ABdhPJww21Hth13z+5OO5JA69CELUmdUPUVDnWRueSDfd+la002REo8vxcMC7AjmfNDVPvnVBeSOuw==
X-Received: by 2002:a9d:4d17:: with SMTP id n23mr20579048otf.43.1606102209368;
        Sun, 22 Nov 2020 19:30:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:51cd:: with SMTP id d13ls3063076oth.11.gmail; Sun, 22
 Nov 2020 19:30:08 -0800 (PST)
X-Received: by 2002:a9d:7855:: with SMTP id c21mr14009812otm.218.1606102208776;
        Sun, 22 Nov 2020 19:30:08 -0800 (PST)
Date: Sun, 22 Nov 2020 19:30:07 -0800 (PST)
From: Wenchao Hao <haowenchao@huawei.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <005b4cbd-779a-4dce-895c-ae910a9d20d1n@googlegroups.com>
In-Reply-To: <2cc4955d-b619-4af4-9f15-d2cd4224e18bn@googlegroups.com>
References: <20201120062052.51838-1-haowenchao@huawei.com>
 <5FB77CC6020000A10003CD42@gwsmtp.uni-regensburg.de>
 <2cc4955d-b619-4af4-9f15-d2cd4224e18bn@googlegroups.com>
Subject: Re: [EXT] [PATCH] iscsiadm: Verify mode parameters when recognize
 mode
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_766_165391415.1606102207811"
X-Original-Sender: haowenchao@huawei.com
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

------=_Part_766_165391415.1606102207811
Content-Type: multipart/alternative; 
	boundary="----=_Part_767_1350072570.1606102207811"

------=_Part_767_1350072570.1606102207811
Content-Type: text/plain; charset="UTF-8"

OK. There is a logic problem in this patch where I forgotten valid the 
parameters mode in  verify_mode_params.
I would send a V2 patch to fix both this problem and the submission 
message, then make a pull request on github.

On Sunday, November 22, 2020 at 1:02:55 AM UTC+8 The Lee-Man wrote:

> I agree that the patch reduces lines of code, in that we would now have 
> one call to verify params, rather than multiple calls. Also, as you say, we 
> check a little sooner, although I don't think that's necessarily a feature.
>
> But please change the wording of the submission to say something more like 
> "Check mode parameters earlier and in one place"?
>
> Please submit this as a pull request on github.com under 
> open-iscsi/open-iscsi, as that saves me the trouble of manually scraping 
> the patch off the email and applying it myself. Thank you.
>
> On Friday, November 20, 2020 at 12:22:37 AM UTC-8 Uli wrote:
>
>> >>> Wenchao Hao <haowe...@huawei.com> schrieb am 20.11.2020 um 07:20 in 
>> Nachricht 
>> <20201120062052.5...@huawei.com>: 
>> > Parameters verify should be performed as soon as possible 
>> > to avoid unuseless work. 
>>
>> "avoid unuseless work" ;-) 
>>
>> Is that useful work? 
>>
>>
>>
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/005b4cbd-779a-4dce-895c-ae910a9d20d1n%40googlegroups.com.

------=_Part_767_1350072570.1606102207811
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK. There is a logic problem in this patch where I forgotten valid the para=
meters mode in&nbsp;&nbsp;verify_mode_params.<div>I would send a V2 patch t=
o fix both this problem and the submission message, then make a pull reques=
t on github.</div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D=
"gmail_attr">On Sunday, November 22, 2020 at 1:02:55 AM UTC+8 The Lee-Man w=
rote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.=
8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div>I =
agree that the patch reduces lines of code, in that we would now have one c=
all to verify params, rather than multiple calls. Also, as you say, we chec=
k a little sooner, although I don&#39;t think that&#39;s necessarily a feat=
ure.</div><div><br></div><div>But please change the wording of the submissi=
on to say something more like &quot;Check mode parameters earlier and in on=
e place&quot;?<br></div><div><br></div><div>Please submit this as a pull re=
quest on <a href=3D"http://github.com" target=3D"_blank" rel=3D"nofollow" d=
ata-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://gi=
thub.com&amp;source=3Dgmail&amp;ust=3D1606188050567000&amp;usg=3DAFQjCNHKMX=
AcFBxtrFyIXMW9Nf2P2VPYfg">github.com</a> under open-iscsi/open-iscsi, as th=
at saves me the trouble of manually scraping the patch off the email and ap=
plying it myself. Thank you.<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"auto" class=3D"gmail_attr">On Friday, November 20, 2020 at 12:22:37 A=
M UTC-8 Uli wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt=
;&gt;&gt; Wenchao Hao &lt;<a rel=3D"nofollow">haowe...@huawei.com</a>&gt; s=
chrieb am 20.11.2020 um 07:20 in Nachricht
<br>&lt;<a rel=3D"nofollow">20201120062052.5...@huawei.com</a>&gt;:
<br>&gt; Parameters verify should be performed as soon as possible
<br>&gt; to avoid unuseless work.
<br>
<br>&quot;avoid unuseless work&quot; ;-)
<br>
<br>Is that useful work?
<br>
<br>
<br>
<br></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/005b4cbd-779a-4dce-895c-ae910a9d20d1n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/005b4cbd-779a-4dce-895c-ae910a9d20d1n%40googlegroups.com</a>.=
<br />

------=_Part_767_1350072570.1606102207811--

------=_Part_766_165391415.1606102207811--
