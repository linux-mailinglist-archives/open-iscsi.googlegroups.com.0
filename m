Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBW4W6P7AKGQEHMY6SYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6895F2DE696
	for <lists+open-iscsi@lfdr.de>; Fri, 18 Dec 2020 16:31:40 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id h15sf1308644vka.10
        for <lists+open-iscsi@lfdr.de>; Fri, 18 Dec 2020 07:31:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608305499; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZwPA7YKZTjjwUbr3OTCqMMDIc9lGJMOwncM8kQ/JLZcA+TNdxCUlYtORdcZqALPihJ
         xnx223oE6kIe4lhv4jjrFzNzYI6dova4p9QCa+CDHQBsV8+og8FT4QB4U4R16XgtIzG4
         GMoKllbJzW1x+5K72Zf2+OYMNS65gLazRYhgIkPXIYBSB8o+e67ORLCt0CLVF8/gzwKr
         KjDegGpLVTSayv2ZNOhBGFEZZ2cTd/tO1ctnhatBkTxPQzNrlGLmKPEhvGn6JBLCZ14g
         oqXi9OL3TEhYyl9fHNhKzesIxbfclMLbqd6mdhK/qKZZBn4TF9h1os8rZTsz/XgwWyG1
         P3+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JH/F3g5/1GC2g38NXLtSnoVkzqJAU8+nUMH4pfL8kv8=;
        b=wkBiIFSQjQ/oaoCK03AaVJq8FR8tjfXEHAzvR2ALsKW9MiOLc58lz5Ybq6HnfcQ/0T
         piXTGuc/J1LvFbGuJrVOL1NzAr990llzCSDflvtsbhZQG6odD/ArIC/lT3UBJf6ZwFtP
         XoVTt2DC4XAHmsX0hK2TafZateR4BQOx3r2lSmI/mFVIzjOVe/X2gRnAbz63UWlO/c9a
         bC/gutGoa2Xsr5x9Bt326pXUOQ/llPLy2A0oHM+lhgGAQFZfcu9nXDtU+6y25W7LK6XJ
         SEbFrMSBIfa9QWmU5PZEwudx9/vTjpCSQArStbjBvfF1FgzNVktQ7bpxD9gVWIaawiVH
         6XeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aUaGot3i;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JH/F3g5/1GC2g38NXLtSnoVkzqJAU8+nUMH4pfL8kv8=;
        b=jK3ZKvSkQaxzkX0xpEt7hBR4+vm+CfJgXeUTws3/n2Wvx9GYUbMvrE/B70h3jtr1vH
         KFT9ybPCzVmuOJEcwpqf58+RcXdNz6aN7wV8w/jSF3hPbaSgRSCiECJcgl66LG5E1NLt
         aDTkRvy/8inRGquNs86nkV//DReGs3kQZ92iPRltiZT6ug7H/YXnn2Ct9Q9T75NRSg4e
         XYRtyJzNyPqROYQFJMcWQK3WtwZpJVvsEjVmvkU/t8n9k66JsN7n6rUSWBfhMEy+bho7
         PpjxoJjliYyt3EN+QY8Uuopk9vCJUTTm1HaMApl9Y71vKCBtxHYnhnqoEcOqi+z2RlwL
         V7Xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JH/F3g5/1GC2g38NXLtSnoVkzqJAU8+nUMH4pfL8kv8=;
        b=TwghsYOzQilz//geUBMy82LAap3pAjp9uqz+SlcJmKyPn+nhR/GytqlSAhy1zwaa30
         5XXLgo8OUYw4x7GunG14k+7M6s5DCRyOWFrDV64PPDjtVOW+oDEkpGu0L8wh7BLo/x5f
         1dPf2nZOypeR+IAhTxRZGrVYny1sp7d5QVFI/RjDAhEavYoGRFxHQv6jx0KHQc3M6Qxs
         clxYX90rG7loZJ/qyvXA7l0PNzB9zREAy5I0nLp6UORaMpP6tkiy6pe50MzRvbNp+HRb
         kR+aiMxQlwqiPgq1HEpyLHah/txlTBydSdSQumDP/9oJocH2cjCblTEuowkly3feV9yL
         zGkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JH/F3g5/1GC2g38NXLtSnoVkzqJAU8+nUMH4pfL8kv8=;
        b=bXuauXRFOiphfnlXYybBOfSNbrv8sIPrSmkpjATWX8SF/Utf3u2xKIBvCHsus+amIB
         x0vrsfryjCczG1oNrf1ByOeFsBOtMtdWIXGPs/PxEBox4k/MKrFLaHKd3ueG4/82m0Sd
         hH2Ce6zg3uI4BMJXqLynk9IEJwyTF4VBQP15fyTWvUFTs5gbWlBudneYbOrbkrWWig6x
         4MsQaQ0qgjH7HAYyPcM4+WCi7nRQ6z3zrcLCImhOfvX+ak3Igezgm7fIfoziOvhGTDe8
         FzGvW7Sdp966mPX34BkliQBWZ00czUqaapiS2vYT0pZkrF5Kfb0h/wnP0g6aYmhuDOXU
         1v3g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530CbPL1B8G9mSBwJgGHOF6nu2ApYOKRie1B0Il5htNij9vFNrwX
	MI63E80R6COAyUrKOXDTz7k=
X-Google-Smtp-Source: ABdhPJzuP8VqO7zY68hlzx+fx4CRALe/Cro1ikpc8nvT6YDv1Io+yTlgQmOluExO1GEY7iaVRrkXQA==
X-Received: by 2002:a05:6102:52d:: with SMTP id m13mr4782848vsa.44.1608305499187;
        Fri, 18 Dec 2020 07:31:39 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls3950020vsf.6.gmail; Fri, 18 Dec
 2020 07:31:38 -0800 (PST)
X-Received: by 2002:a67:8011:: with SMTP id b17mr4907307vsd.2.1608305498588;
        Fri, 18 Dec 2020 07:31:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608305498; cv=none;
        d=google.com; s=arc-20160816;
        b=XA9e1eGmnLGzXXlkKBFRgtYnibg6J5Vx57lD+tB7r/KetVGYt7nv55o4eGALIhiVlc
         eKh8MJ8ahUm/gvvhJsBwTzOkVzlLmfSc09umUHFn5Q8I28y3eZoq6TIMEeYMnnEk2YXe
         2E04kKc5jT5reOR0McUmT8STfZIwabnAPT5f9d4aGpw18NxDvcwKmmMyeyLy37DN2AfG
         B80CcZ6USi3wpZXnVAwbbZVLLaQJFE/Kd83Z6C0cz0ey0bXfSCD6YwvV/l5qxjXbf6No
         kt+syFfIbg7Hw1bAtLEaO//WUx91KIFCopPlfWaIg1rgFSsJiK39qvQeDaZzcP7NNsdK
         y56Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Zz6pWL2BCF54vRgu2GQAa+4LQ+zKhU34uI2DVQlaNIQ=;
        b=B+GQgGWl4SeABILHpF/hTWrvaFTNkQiWM2oLPMVY/gQFjRXSg/q+ebOfVxIJVWip3d
         xhRIlC5M0WYqOtHLuZBeisf9fvEjrUbczsna/83mWgfUOwN2Yt57m9zVEnev2BgmGqKf
         COxHmGJEMSGpLVTk8OVm3Q1txmn79WBx7SblLIZBOUbuKGfMScttj7jXePc6a2lV/vIM
         k7snXfYB2TRKOMnKW0VDJm2QlP1k6F5x/5kJAptl33ajmlssUc0Y2idFRb2VA6KC21qJ
         Uzptibydz2lniftAyFZIDrxX7oGr3Mx9EY2xTvQ16YissanQgz0W5YHyXEaKNglLX1Qv
         +cKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aUaGot3i;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id y8si812811vko.4.2020.12.18.07.31.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 07:31:38 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id x15so2510390ilq.1
        for <open-iscsi@googlegroups.com>; Fri, 18 Dec 2020 07:31:38 -0800 (PST)
X-Received: by 2002:a05:6e02:1b8a:: with SMTP id h10mr4483800ili.141.1608305497844;
 Fri, 18 Dec 2020 07:31:37 -0800 (PST)
MIME-Version: 1.0
References: <dd922e70-a4b0-4d61-aed1-ef8eca287926n@googlegroups.com> <0821d935-d1d7-4483-b5af-aad16d2f85c7n@googlegroups.com>
In-Reply-To: <0821d935-d1d7-4483-b5af-aad16d2f85c7n@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Fri, 18 Dec 2020 10:31:26 -0500
Message-ID: <CAK3e-EZcnKEU1Px8t2q8A-UBRPichLVgQdUEaRgR6t_j=h59Nw@mail.gmail.com>
Subject: Re: Hi help me please
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e3b40705b6becd22"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aUaGot3i;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--000000000000e3b40705b6becd22
Content-Type: text/plain; charset="UTF-8"

Hello,

 You didn't say what iSCSI target you are using.  This PDF below  covers
how to use open-iSCSI with RHEL v6.x / 7.x with Dell PS Series SANs.  The
open-iSCSI part is basically the same for all iSCSI.  With one major
exception.  Dell PS Series iSCSI SANs have all the IPs for iSCSI in the
same IP subnet.  Which requires some custom configuration settings in
open-iSCSI to make MPIO work in Linux.  If your iSCSI SAN uses two
different IP subnets you can skip the section on setting egress ports.

https://downloads.dell.com/solutions/storage-solution-resources/%283199-CD-L%29RHEL-PSseries-Configuration.pdf


Regards,
Don

On Thu, Dec 17, 2020 at 1:46 PM The Lee-Man <leeman.duncan@gmail.com> wrote:

> As Ulrich replied, there's not much we can do with the data you provided.
>
> On Wednesday, December 16, 2020 at 12:29:20 PM UTC-8 go xayyasang wrote:
>
>> [root@target ~]# iscsiadm -m node -o show
>> iscsiadm: No records found
>>
>>
> That's normal if you have no records in your database. If you want records
> in your database, you have to perform discovery.
>
> Please browse the README file that comes with open-iscsi. We don't have a
> general open-iscsi HowTo tutorial, but search the internet (as I just did),
> and you'll find several.
>
> Next time, supply: OS and version used, open-iscsi version number, what
> you are trying to do, and all steps leading up to your error, so that we
> can reproduce your error if needed.
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/0821d935-d1d7-4483-b5af-aad16d2f85c7n%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/0821d935-d1d7-4483-b5af-aad16d2f85c7n%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EZcnKEU1Px8t2q8A-UBRPichLVgQdUEaRgR6t_j%3Dh59Nw%40mail.gmail.com.

--000000000000e3b40705b6becd22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>=C2=A0You didn&#39;t say w=
hat iSCSI target you are using.=C2=A0 This PDF below=C2=A0 covers how to us=
e open-iSCSI with RHEL v6.x / 7.x with Dell PS Series SANs.=C2=A0 The open-=
iSCSI part is basically the same for all iSCSI.=C2=A0 With one major except=
ion.=C2=A0 Dell PS Series iSCSI SANs have all the IPs for iSCSI in the same=
 IP subnet.=C2=A0 Which requires some custom configuration settings in open=
-iSCSI to make MPIO work in Linux.=C2=A0 If your iSCSI SAN uses two differe=
nt=C2=A0IP subnets you can skip the section on setting egress ports.=C2=A0<=
/div><div><br></div><div><a href=3D"https://downloads.dell.com/solutions/st=
orage-solution-resources/%283199-CD-L%29RHEL-PSseries-Configuration.pdf">ht=
tps://downloads.dell.com/solutions/storage-solution-resources/%283199-CD-L%=
29RHEL-PSseries-Configuration.pdf</a><br></div><div><br></div><div></div><d=
iv><br></div><div>Regards,=C2=A0</div><div>Don</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 17, 2020 at=
 1:46 PM The Lee-Man &lt;<a href=3D"mailto:leeman.duncan@gmail.com">leeman.=
duncan@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div>As Ulrich replied, there&#39;s not much we can do with=
 the data you provided.</div><br><div class=3D"gmail_quote"><div dir=3D"aut=
o" class=3D"gmail_attr">On Wednesday, December 16, 2020 at 12:29:20 PM UTC-=
8 go xayyasang wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div>[root@target ~]# iscsiadm -m node -o show</div><div>iscsiadm: No=
 records found</div><div><br></div></blockquote><div><br></div><div>That&#3=
9;s normal if you have no records in your database. If you want records in =
your database, you have to perform discovery.</div><div><br></div><div>Plea=
se browse the README file that comes with open-iscsi. We don&#39;t have a g=
eneral open-iscsi HowTo tutorial, but search the internet (as I just did), =
and you&#39;ll find several.</div><div><br></div><div>Next time, supply: OS=
 and version used, open-iscsi version number, what you are trying to do, an=
d all steps leading up to your error, so that we can reproduce your error i=
f needed.<br></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0821d935-d1d7-4483-b5af-aad16d2f85c7n%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://g=
roups.google.com/d/msgid/open-iscsi/0821d935-d1d7-4483-b5af-aad16d2f85c7n%4=
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
om/d/msgid/open-iscsi/CAK3e-EZcnKEU1Px8t2q8A-UBRPichLVgQdUEaRgR6t_j%3Dh59Nw=
%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.go=
ogle.com/d/msgid/open-iscsi/CAK3e-EZcnKEU1Px8t2q8A-UBRPichLVgQdUEaRgR6t_j%3=
Dh59Nw%40mail.gmail.com</a>.<br />

--000000000000e3b40705b6becd22--
